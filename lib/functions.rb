@names = []

def add_contacts
  system "clear"
  puts "+- Add Contacts -+\n".center(40)

  print "Enter the name of people: "
  name = gets.chomp
  print "Enter the number of people: "
  number = gets.chomp.to_i
  
  return {name: name, phone: number}
end

def view_contacts(list_of_names)
  system "clear"
  puts "+- All Contacts -+\n".center(40)
  names = list_of_names

  i = 0
  while i < names.length
    if names != 0
      puts "#{i + 1} - Name: #{names[i][:name]} | Phone: #{names[i][:phone]}"
      i += 1
    end
  end

  puts "[Enter to back]"
  gets
end
