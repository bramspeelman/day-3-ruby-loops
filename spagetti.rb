def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_EGGS = 5
NUM_CHEESE =6

ingredients = [
  {name: "eggs", quantity: NUM_EGGS},
  {name: "cheese", quantity: NUM_CHEESE},
  {name:"onion", quantity:1},
  {name:"oil", quantity:"some"}]

puts "* Let's cook an omelette with cheese! *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == "N"
    puts "You need to go shopping"
    print_progress_bar
  elsif answer == "Y"
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input. Try again."
end

steps = [
  { description: "break 2 eggs in bowl", action: "break_eggs_in_bowl" },
  { description: "clutch eggs", action: "clutch_eggs" },
  { description: "chop the onions", action: "generic_recipe_step" },
  { description: "add oil to the pan", action: "oil_to_pan" },
  { description: "add onions to the pan", action: "onions_to_pan" },
  { description: "add clutched eggs to the pan", action: "add_clutch_eggs_to_pan"
  { description: "after 10 minutes take out eggs", action: "take_out_eggs" }, },
]
