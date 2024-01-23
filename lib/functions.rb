require 'io/console'
require_relative "class_contacts"
require_relative "class_phonebook"
require_relative "function_edit"

@my_phonebook = Phonebook.new()
@width_center_space = 40

def add_contacts
  system "clear"
  puts "+-- Add Contacts --+\n".center(40)
  print "Enter the name of people: "
  name = gets.chomp.capitalize
  print "Enter the number of people: "
  number = gets.chomp.to_i
  @my_phonebook.add_contact(name, number)
end

def view_contacts
  system "clear"
  puts "+-- All Contacts --+\n".center(@width_center_space)
  @my_phonebook.show_contacts
  puts "\n\n\n[Enter to back]"
  gets
end

def delete_contacts
  system "clear"
  puts "+-- Delete Contacts --+\n".center(@width_center_space)
  @my_phonebook.show_contacts
  puts "\n\n\n[ESC TO BACK]"
  print "Enter the number of the contact you want to delete: "
  # TODO - press esc to return to the menu
  delete_user = gets.chomp.to_i - 1
  @my_phonebook.delete_contact(delete_user)
end

def edit_contact
  system "clear"
  puts "+-- Edit Contacts --+\n".center(@width_center_space)
  @my_phonebook.show_contacts
  puts "\n\n\n[ESC TO BACK]"
  print "Choose the contact to edit: "
  # TODO - press esc to return to the menu
  user_index = gets.to_i - 1
  system "clear"
  puts "+-- Editing #{@my_phonebook.contacts[user_index][:name]} --+\n".center(@width_center_space)
  more_edit_functions(user_index)
end

def exit_program
  system "clear"
  puts "+-- Thanks for use this PHONEBOOK --+".center(@width_center_space)
  system "sleep 1"
  system "clear"
  exit
end

def view_one_contact
  system "clear"
  puts "+-- View Contact --+\n".center(@width_center_space)
  print "\n\nEnter the name of contact: "
  user_option = gets.chomp
  @my_phonebook.view_one_contact(user_option)
  draw_menu
end