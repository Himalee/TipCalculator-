class TipCalculator

def initialize(currency)
  @currency = currency
end


def first_question
  print "What is the bill amount? " #can we use a while loop? Need to make sure the last amount is used in the next function?
  @bill_amount = gets.chomp.to_f #$ turns variable into a global variable
    if @bill_amount > 0 #look into regular expressions. @ is an instance variable vs a local variable
      second_question
    else
      puts "Please enter a positive amount"
      first_question
    end
end

private

# def check_number


def second_question
  print "What is the tip percentage? "
  @tip_rate = gets.chomp.to_f
  if @tip_rate > 0
    answer
  else
    puts "Please enter a positive rate"
    second_question
  end
end

def sub_total
  @bill_amount
end

def tip_amount
  (@bill_amount * (@tip_rate / 100)).round(2)
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
tcd = TipCalculator.new('$') #the currency is the state of the class
tcp.first_question #call the funtion



#first_question
