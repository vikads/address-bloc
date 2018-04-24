require_relative '../models/entry'
# #1 is the standard first line of an RSpec test file.
#We are saying that the file is a spec file and that it tests Entry
RSpec.describe Entry do
  # #2 we use describe to give our test structure.
  #In this case, we're using it to communicate that the specs test the Entry attributes.
  describe "attributes" do
    # #3 we separate our individual tests using the it method. Each it represents a unique test.
    it "responds to name" do
      entry = Entry.new
      # #4 each RSpec test ends with one or more expect method, which we use to declare the expectations for the test.
      #If those expectations are met, our test passes, if they are not, it fails.


      expect(entry).to respond_to(:name)
    end

    it "responds to phone number" do
      entry = Entry.new
      expect(entry).to respond_to(:phone_number)
    end

    it "responds to e-mail" do
      entry = Entry.new
      expect(entry).to respond_to(:email)
    end
  end
end
