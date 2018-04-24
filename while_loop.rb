def first_question
puts "What is the bill amount?"

while @bill_amount = gets.chomp
  case @bill_amount
  when /\D/
    puts "Please enter a positive amount"
  else
    second_question
  end
end
end

def second_question
puts "What is the tip percentage?"

while @tip_amount = gets.chomp
  case @tip_amount
  when /\D/
    puts "Please enter a positive amount"
  else
    output
  end
end
end

def sub_total
  (@bill_amount.to_f).round(2)
end

def tip_amount
  (@bill_amount.to_f * (@tip_rate.to_f / 100)).round(2)
end

def grand_total
  sub_total + tip_amount
end

def currency
  "£"
end

def output
  puts "This bill amount is #{currency}#{sub_total}"
  puts "The tip amount is #{currency}#{tip_amount}"
  puts "The total to pay is #{currency}#{grand_total}"
  first_question
end

first_question


# prompt = "> "
# puts "Question asking for 1 or 2."
# print prompt
#
# while user_input = gets.chomp # loop while getting user input
#   case user_input
#   when "1"
#     puts "First response"
#     break # make sure to break so you don't ask again
#   when "2"
#     puts "Second response"
#     break # and again
#   else
#     puts "Please select either 1 or 2"
#     print prompt # print the prompt, so the user knows to re-enter input
#   end
# end
