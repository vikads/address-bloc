require_relative '../models/address_book'

RSpec.describe AddressBook do

  let(:book) { AddressBook.new }

  describe "attributes" do
    it "responds to entries" do
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as an array" do
      expect(book.entries).to be_an(Array)
    end

    it "initializes entries as empty" do
      expect(book.entries.size).to eq(0)
    end
  end

    describe "add_entry" do
      it "adds only one entry to the address book" do
        book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

        expect(book.entries.size).to eq(1)
      end

      it "adds the correct information to entries" do
        book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
        new_entry = book.entries[0]

        expect(new_entry.name).to eq('Ada Lovelace')
        expect(new_entry.phone_number).to eq('010.012.1815')
        expect(new_entry.email).to eq('augusta.king@lovelace.com')
      end
    end

    describe "remove_entry" do
     it "removes only one entry from the address using the name, phone_number and email" do
       book = AddressBook.new
       book.add_entry("Imie Nazwisko", "123.456.789", "imie.nazwisko@poczta.com")

       name = 'Ada Lovelace'
       phone_number = '010.012.1815'
       email = 'augusta.king@lovelace.com'
       book.add_entry(name, phone_number, email)

       expect(book.entries.size).to eq(2)
       book.remove_entry(name, phone_number, email)
       expect(book.entries.size).to eq(1)
       expect(book.entries.first.name). to eq("Imie Nazwisko")
     end
   end

    #  Test that AddressBook's .import_from_csv() method is working as expected
    describe "#{import_from_csv}" do
      it "imports the correct number of entries" do

        book.import_from_csv("entries.csv")
        book_size = book.entries.size

        # Check the size of the entries in AddressBook
        expect(book_size).to eq 5
      end

      it "imports the 1st entry" do
        book.import_from_csv("entries.csv")
        #Check the first entry
        entry_one = book.entries[0]

        expect(entry_one.name).to eq "Bill"
        expect(entry_one.phone_number).to eq "555-555-4584"
        expect(entry_one.email).to eq "bill@blocmail.com"
      end
    end

end
