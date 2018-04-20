class TipCalculator

def initialize(currency)
  @currency = currency
end


def first_question
  print "What is the bill amount? " #can we use a while loop? Need to make sure the last amount is used in the next function?
  @bill_amount = gets.chomp #$ turns variable into a global variable
    # if @bill_amount > 0 #look into regular expressions. @ is an instance variable vs a local variable
    #   second_question
    if
      check(@bill_amount)
      puts "Please enter a number"
      first_question
    else
      #puts "Please enter a positive amount"
      second_question
    end
end


private


def second_question
  print "What is the tip percentage? "
  @tip_rate = gets.chomp
  #if @tip_rate > 0
    #answer
  if
    check(@tip_rate)
    puts "Please enter a number"
    second_question
  else
    #puts "Please enter a positive rate"
    answer
  end
end

def check(input)
  /[a-z]/ =~ input # =~ is known as the "match operator"
                # can be used to match a string against a regular expression.
end             # /\D/ - A non-digit character ([^0-9])
                # means if the string contains the letters a-z

def sub_total
  (@bill_amount.to_f).round(2)
end

def tip_amount
  (@bill_amount.to_f * (@tip_rate.to_f / 100)).round(2)
end

def grand_total
  sub_total + tip_amount
end

# @currency = "£"
# $bill = "#{@currency}"
  #$tip_amount = $currency(bill * ($tip_rate / 100)).round(2)


# def
# $bill = $bill_amount
# tip_amount = $bill_amount * ($tip_rate / 100)).round(2)
# total_pay = $bill_amount + ($bill_amount * ($tip_rate / 100))).round(2)

#$currency = "£"

def answer
  puts "This bill amount is #{@currency}#{sub_total}"
  # puts "The bill amount is #{$currency}#{($bill_amount).round(2)}"
  puts "The tip amount is #{@currency}#{tip_amount}"
  puts "The total to pay is #{@currency}#{grand_total}" #take calculations out and put in a separate funtion.
end

end

tcp = TipCalculator.new('£') #new object of the tipcalculator class
# tcd = TipCalculator.new('$') #the currency is the state of the class
tcp.first_question #call the funtion

puts "The bill amount is #{bill_amount}"
puts "The tip amount is #{(bill_amount * (tip_rate1 / 100)).round(2)}"
puts "The total to pay is #{(bill_amount + (bill_amount * (tip_rate1 / 100))).round(2)}."

#first_question
