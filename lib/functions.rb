require 'io/console'
@names = []
@width_center_space = 40

def add_contacts
  system "clear"
  puts "+-- Add Contacts --+\n".center(40)

  print "Enter the name of people: "
  name = gets.chomp
  print "Enter the number of people: "
  number = gets.chomp.to_i
  
  return {name: name, phone: number}
end

def show_contacts(list_of_names)
  i = 0
  while i < list_of_names.length
    if @names != 0
      puts "#{i + 1} - Name: #{list_of_names[i][:name]} | Phone: #{list_of_names[i][:phone]}"
      i += 1
    end
  end
end

def view_contacts(list_of_names)
  system "clear"
  puts "+-- All Contacts --+\n".center(@width_center_space)
  if @names.length == 0

    puts "<EMPTY LIST>".center(@width_center_space)
  end
  show_contacts(list_of_names)
  puts "\n\n\n[Enter to back]"
  gets
end

def delete_contacts(list_of_names)
  system "clear"
  puts "+-- Delete Contacts --+\n".center(@width_center_space)
  if @names.length == 0
    puts "<EMPTY LIST>".center(@width_center_space)
  end
  show_contacts(list_of_names)
  puts "\n\n\n[ESC TO BACK]"
  print "Enter the number of the contact you want to delete: "
  esc_to_back = STDIN.getch
  if esc_to_back == "\e" 
    draw_menu
  end
  delete_user = gets.chomp.to_i - 1

  @names.delete(@names.at(delete_user))
end

def exit_program
  system "clear"
  puts "+-- Thanks for use this PHONEBOOK --+".center(@width_center_space)
  system "sleep 1"
  system "clear"
  exit
end