class Phonebook
  attr_reader :contatos

  def initialize
    @contacts = []
  end

  def add_contacts(name, number)
    new_contact = Contact.new(name, number)
    @contacts.push({name: name, phone: number})
    puts @contacts
    gets
  end

end