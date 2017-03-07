friends = [{name: "Miriam", occupation: "teacher", city:"Amsterdam"},{name: "Jan", occupation: "unemployed", city:"Leeuwarden"}]
friends.each do |key, value|
  puts "#{key[:name]} lives in #{key[:city]} and works as a #{key[:occupation]} "

friends.each_key 
end
