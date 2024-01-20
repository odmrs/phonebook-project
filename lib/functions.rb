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

def name_edit(list_of_names, index_array_names)
  system "clear"
  puts "+-- Name edit Contact --+\n".center(@width_center_space)
  puts "Previus name: #{@names[index_array_names][:name]}"

  print "\n\nEnter the new name: "
  new_name = gets.chomp
  @names[index_array_names][:name] = new_name

  puts "Saved successfully"
  system "sleep 1"
  edit_contacts(list_of_names)
end

def phone_edit(list_of_names, index_array_names)
  system "clear"
  puts "+-- Phone edit Contact --+\n".center(@width_center_space)
  puts "Previus phone: #{@names[index_array_names][:phone]}"

  print "\n\nEnter the new phone: "
  new_name = gets.chomp.to_i
  @names[index_array_names][:phone] = new_name

  puts "Saved successfully"
  system "sleep 1"
  edit_contacts(list_of_names)
end


def edit_contacts(list_of_names)
  system "clear"
  puts "+-- Edit Contacts --+\n".center(@width_center_space)
  if @names.length == 0
    puts "<EMPTY LIST>".center(@width_center_space)
  end
  show_contacts(list_of_names)
  puts "\n\n\n[ESC TO BACK]"
  print "Choose the contact to edit: "
  esc_to_back = STDIN.getch
  if esc_to_back == "\e" 
    draw_menu
  end
  user_index = gets.to_i - 1

  system "clear"

  puts "+-- Editing #{@names[user_index][:name]} --+\n".center(@width_center_space)

  puts "\n\n\n[ESC TO BACK]"
  puts "\n\n1 - Name\n2 - Phone\n\n"
  print "Choose the edition option: "
  esc_to_back = STDIN.getch
  if esc_to_back == "\e" 
    draw_menu
  end

  option_user = gets.chomp.to_i

  case option_user
  when 1
    name_edit(list_of_names, user_index)
  when 2 
    phone_edit(list_of_names, user_index)
  else 
    edit_contacts(list_of_names)
  end
end

def exit_program
  system "clear"
  puts "+-- Thanks for use this PHONEBOOK --+".center(@width_center_space)
  system "sleep 1"
  system "clear"
  exit
end