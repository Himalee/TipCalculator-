#currency = "£"

def start
  puts "What is the total bill amount?"
  print "> "
  bill_amount = gets.chomp
  if is_valid?(bill_amount)
    # how_much = answer.to_i
    tip_rate
  else
    puts "Please enter a positive number"
    start
  end

  # if how_much <= 0
  #   puts "Please enter a positive amount."
  #   print "> "
  # else
  # tip_rate
  # end
end

def tip_rate
  puts "What is the tip percentage? eg. 20"
  tip_rate1 = gets.chomp
  if is_valid?(tip_rate1)
    answer
  else
    puts 'invalid tip rate'
    tip_rate
  end
end

def is_valid?(input) #called a regular expression - matched patterns against strings.
  /^[0-9]*$/ =~ input
end

def answer
  puts "The bill amount is #{bill_amount}"
  puts "The tip amount is #{(bill_amount * (tip_rate1 / 100)).round(2)}"
  puts "The total to pay is #{(bill_amount + (bill_amount * (tip_rate1 / 100))).round(2)}."
end

start
