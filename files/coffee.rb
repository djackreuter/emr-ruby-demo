# welcome and get name
print 'Welcome to Ruby Coffee! What is your name? '
name = gets.chomp
name = name.capitalize

# take order
print "Thanks #{name}!, would you like coffee or tea today? "
beverage = gets.chomp

coffee_sm_price = 3.95
coffee_sm_price.to_f
coffee_md_price = 4.75
coffee_md_price.to_f
coffee_lg_price = 6.95
coffee_lg_price.to_f
coffee_sm = 'small'
coffee_md = 'medium'
coffee_lg = 'large'

# handle coffee
if beverage == 'coffee'
  puts 'Great choice!'
  sleep 1
  print 'Our coffee comes in three sizes. '
  sleep 0.5
  print "Our small coffee is #{coffee_sm_price}, "
  sleep 0.5
  print "our medium is #{coffee_md_price}, "
  sleep 0.5
  print "and our large is #{coffee_lg_price}. "
  sleep 1
  print 'What size would you like today? '

  # handle size
  size = gets.chomp
  if size == coffee_sm
    print "Great! Your #{coffee_sm} is going to be #{coffee_sm_price}. "
  elsif size == coffee_md
    print "Great! Your #{coffee_md} is going to be #{coffee_md_price}. "
  elsif size == coffee_lg
    print "Great! Your #{coffee_lg} is going to be #{coffee_lg_price}. "
  end

  # payment
  print 'Will that be cash or card? '
  payment_method = gets.chomp
  # payment for small coffee
  if payment_method == 'cash' && size == coffee_sm
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_sm_price
      change = coffee_sm_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your drink, have a nice day!"
    elsif ammount == coffee_sm_price
      puts "Great! Here's your drink, have a nice day!"
    end
  end
  # payment for medium coffee
  if payment_method == 'cash' && size == coffee_md
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_md_price
      change = coffee_md_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your drink, have a nice day!"
    elsif ammount == coffee_md_price
      puts "Great! Here's your drink, have a nice day!"
    end
  end
  # payment for large coffee
  if payment_method == 'cash' && size == coffee_lg
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_lg_price
      change = coffee_lg_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your drink, have a nice day!"
    elsif ammount == coffee_lg_price
      puts "Great! Here's your drink, have a nice day!"
    end
  end

  # handle card payment
  if payment_method == 'card'
    print 'Will that be credit or debit? '
    card_method = gets.chomp
    if card_method == 'credit'
      puts 'Please swipe your card: '
      sleep 5
      puts 'Approved!'
      sleep 1
      print "Excellent, here is your drink #{name}, have a great day!"
    end
    if card_method == 'debit'
      print 'Please enter your pin: '
      pin = gets.chomp.to_i
      sleep 5
      if pin != 0000
        puts 'Declined!'
        sleep 1
        puts "Sorry #{name} no coffee for you! "
      else
        puts 'Approved!'
        sleep 1
        print "Excellent, here is your drink #{name}, have a great day!"
      end
    end
  end
end
