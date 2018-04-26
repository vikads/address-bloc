require_relative 'entry'
require "csv"

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)

    index = 0
    entries.each do |entry|

      if name < entry.name
        break
      end
      index+=1
    end

    entries.insert(index, Entry.new(name, phone_number, email))
  end

  ddef remove_entry(name, phone_number, email)
      delete_entry = nil

      @entries.each do |entry|
        if name == entry.name && phone_number == entry.phone_number && email == entry.email
          delete_entry = entry
        end
      end

      @entries.delete(delete_entry)
    end

  def import_from_csv(file_name)
    #implementation goes here
  end


end
