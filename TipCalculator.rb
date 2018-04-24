class TipCalculator

def initialize(currency)
  @currency = currency
end


def first_question
  print "What is the bill amount? " # Can we use a while loop? Need to make sure the last amount is used in the next function?
  @bill_amount = gets.chomp #$ turns variable into a global variable, @ is an instance variable vs a local variable
    if is_a_letter?(@bill_amount)
      puts "Please enter a number"
      first_question
    else
      second_question
    end
end

private

def second_question
  print "What is the tip percentage? "
  @tip_rate = gets.chomp
    if is_a_letter?(@tip_rate)
      puts "Please enter a number"
      second_question
  else
    output
  end
end



# =~ is known as the "match operator". Used to match a string against a regular expression.

def is_a_letter?(user_input)
  /\D/ =~ user_input # /\D/ - A non-digit character ([^0-9])
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

def output
  puts "This bill amount is #{@currency}#{sub_total}"
  puts "The tip amount is #{@currency}#{tip_amount}"
  puts "The total to pay is #{@currency}#{grand_total}"
end

end

# A new object of the tipcalculator class:
tpc = TipCalculator.new('£') # The currency is the state of the class
tpc.first_question # Calls the function
