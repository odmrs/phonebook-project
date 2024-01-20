$LOAD_PATH << File.join(File.dirname(__FILE__), "lib")
require "functions"

def draw_menu
  phonebook_options = {
    view: 1,
    add: 2,
    edit: 3,
    del: 4,
    view_single: 5,
    exit: 0
  }

  loop do
    system "clear"
    puts "+-- PHONEBOOK --+".center(@width_center_space)
    puts "\n1 - Contacts\n2 - Add\n3 - Edit\n4 - Remove\n0 - Exit"

    print "\nEnter the number of option: "
    user_option = gets.chomp.to_i

    case user_option
    when phonebook_options[:add]
      @names.push(add_contacts)
    when phonebook_options[:view]
      view_contacts(@names)
    when phonebook_options[:edit]
      edit_contacts(@names)
    when phonebook_options[:del]
      delete_contacts(@names)
    when phonebook_options[:exit]
      exit_program
    when phonebook_options[:view_single]
      #TODO
    else
      puts "Not found"
    end
  end
end

draw_menu