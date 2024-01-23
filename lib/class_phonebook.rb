class Phonebook
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def add_contact(name, number)
    new_contact = Contact.new(name, number)
    @contacts.push({name: name, phone: number})
  end

  public
  def show_contacts
    counter = 0
    @contacts.each do |list_index|
      puts "#{counter += 1} - Name: #{list_index[:name]} | Number: #{list_index[:phone]}"
    end
  end

  def delete_contact(index_user)
    @contacts.delete_at(index_user)
  end

  public
  def edit_name(index_user, new_name)
    @contacts[index_user][:name] = new_name
  end

  public
  def edit_phone(index_user, new_phone)
    @contacts[index_user][:phone] = new_phone
  end
end