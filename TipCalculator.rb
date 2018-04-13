
def first_question
  print "What is the bill amount? " #can we use a while loop? Need to make sure the last amount is used in the next function?
  $bill_amount = gets.chomp.to_f #$ turns variable into a global variable
    if $bill_amount > 0 #look into regular expressions. Put on trello board. Push to github. Have a look into while loops and how they react with user input..
      second_question
    else
      puts "Please enter a positive amount"
      first_question
    end
end

# def check_number


def second_question
  print "What is the tip percentage? "
  $tip_rate = gets.chomp.to_f
  if $tip_rate > 0
    answer
  else
    puts "Please enter a positive rate"
    second_question
  end
end

# def
# $bill = $bill_amount
# tip_amount = $bill_amount * ($tip_rate / 100)).round(2)
# total_pay = $bill_amount + ($bill_amount * ($tip_rate / 100))).round(2)

$currency = "£"

def answer
  puts "The bill amount is #{$currency}#{($bill_amount).round(2)}"
  puts "The tip amount is #{$currency}#{($bill_amount * ($tip_rate / 100)).round(2)}"
  puts "The total to pay is #{$currency}#{($bill_amount + ($bill_amount * ($tip_rate / 100))).round(2)}" #take calculations out and put in a separate funtion.
end


first_question
