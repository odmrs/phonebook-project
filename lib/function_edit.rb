def name_edit(index_array_names)
  system "clear"
  puts "+-- Name edit Contact --+\n".center(@width_center_space)
  puts "Previus name: #{@my_phonebook.contacts[index_array_names][:name]}"

  print "\n\nEnter the new name: "
  new_name = gets.chomp.capitalize

  @my_phonebook.edit_name(index_array_names, new_name)

  puts "Saved successfully"
  system "sleep 1"
  edit_contact
end

def phone_edit(index_array_names)
  system "clear"
  puts "+-- Phone edit Contact --+\n".center(@width_center_space)
  puts "Previus phone: #{@my_phonebook.contacts[index_array_names][:phone]}"

  print "\n\nEnter the new phone: "
  new_phone = gets.chomp.to_i
  @my_phonebook.edit_phone(index_array_names, new_phone)
  puts "Saved successfully"
  system "sleep 1"
  edit_contact
end


def more_edit_functions(user_index)
  puts "\n\n\n[ESC TO BACK]"
  puts "\n\n1 - Name\n2 - Phone\n\n"
  print "Choose the edition option: "
  # TODO - press esc to return to the menu
  option_user = gets.chomp.to_i

  case option_user
  when 1
    name_edit(user_index)
  when 2 
    phone_edit(user_index)
  else 
    edit_contact
  end
end

