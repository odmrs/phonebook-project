def draw_menu
  phonebook_options = {
    view: 1,
    add: 2,
    edit: 3,
    del: 4,
    exit: 0
  }

  loop do
    system "clear"
    puts "+ PHONEBOOK +".center(40)
    puts "\n1 - Contacts\n2 - Add\n3 - Edit\n4 - Remove\n0 - Exit"

    print "\nEnter the number of option: "
    user_option = gets.chomp.to_i

    case user_option
    when phonebook_options[:view]
      puts "View Contacts"
    when phonebook_options[:add]
      puts "Add Contacts"
    when phonebook_options[:edit]
      puts "Edit Contacts"
    when phonebook_options[:del]
      puts "Remove Contacts"
    when phonebook_options[:exit]
      puts "Exit Contacts"
      exit
    else
      puts "Not found"
    end
  end
end

draw_menu