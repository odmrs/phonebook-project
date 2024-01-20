def view
  system "clear"
  puts "+- All Contacts -+\n".center(40)
  i = 0
  while i < names.length
    if names != 0
      puts "#{i + 1} - Name: #{names[i][:name]} | Phone: #{names[i][:phone]}"
      i += 1
    end
  end
end