# welcome and get name
print 'Welcome to Ruby Coffee! What is your name? '
name = gets.chomp
name = name.capitalize

# take order
print "Thanks #{name}!, would you like coffee or tea today? "
beverage = gets.chomp

# declare variables
small = 'small'
medium = 'medium'
large = 'large'
# coffee
coffee_sm_price = 3.95
coffee_sm_price.to_f
coffee_md_price = 4.75
coffee_md_price.to_f
coffee_lg_price = 6.95
coffee_lg_price.to_f
# tea
tea_sm_price = 2.95
tea_sm_price.to_f
tea_md_price = 3.75
tea_md_price.to_f
tea_lg_price = 5.95
tea_lg_price.to_f

# handle coffee
if beverage == 'coffee'
  puts 'Great choice!'
  sleep 1
  puts 'Our coffee comes in three sizes.'
  sleep 1
  puts "Our small coffee is #{coffee_sm_price}."
  sleep 1
  puts "Our medium is #{coffee_md_price}."
  sleep 1
  puts "And our large is #{coffee_lg_price}."
  sleep 1
  print 'What size would you like today? '

  # handle size
  size = gets.chomp
  if size == small
    print "Great! Your #{small} is going to be #{coffee_sm_price}. "
  elsif size == medium
    print "Great! Your #{medium} is going to be #{coffee_md_price}. "
  elsif size == large
    print "Great! Your #{large} is going to be #{coffee_lg_price}. "
  end

  # payment
  print 'Will that be cash or card? '
  payment_method = gets.chomp
  # payment for small coffee
  if payment_method == 'cash' && size == small
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_sm_price
      change = coffee_sm_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your coffee #{name}, have a nice day!"
    elsif ammount == coffee_sm_price
      puts "Great! Here's your coffee #{name}, have a nice day!"
    end
  end
  # payment for medium coffee
  if payment_method == 'cash' && size == medium
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_md_price
      change = coffee_md_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your coffee #{name}, have a nice day!"
    elsif ammount == coffee_md_price
      puts "Great! Here's your coffee #{name}, have a nice day!"
    end
  end
  # payment for large coffee
  if payment_method == 'cash' && size == large
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_lg_price
      change = coffee_lg_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your coffee #{name}, have a nice day!"
    elsif ammount == coffee_lg_price
      puts "Great! Here's your coffee #{name}, have a nice day!"
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
      puts "Excellent, here is your coffee #{name}, have a great day!"
    end
    if card_method == 'debit'
      print 'Please enter your pin: '
      pin = gets.chomp.to_i
      sleep 5
      if pin != 0000
        puts 'Declined!'
        sleep 1
        puts "Sorry #{name} no coffee for you! "
        sleep 2
        print 'Try again, please enter your pin: '
        pin = gets.chomp.to_i
        sleep 5
        if pin == 0000
          puts 'Approved!'
          sleep 1
          puts "Excellent, here is your coffee #{name}, have a great day!"
        end
      else
        puts 'Approved!'
        sleep 1
        puts "Excellent, here is your coffee #{name}, have a great day!"
      end
    end
  end
end

# handle tea
if beverage == 'tea'
  puts 'Nice!'
  sleep 1
  puts 'Our tea comes in three sizes.'
  sleep 1
  puts "Our small tea is #{tea_sm_price}."
  sleep 1
  puts "Our medium is #{tea_md_price}."
  sleep 1
  puts "And our large is #{tea_lg_price}."
  sleep 1
  print 'What size would you like today? '

  # handle size
  size = gets.chomp
  if size == small
    print "Great! Your #{small} is going to be #{tea_sm_price}. "
  elsif size == medium
    print "Great! Your #{medium} is going to be #{tea_md_price}. "
  elsif size == large
    print "Great! Your #{large} is going to be #{tea_lg_price}. "
  end

  # payment
  print 'Will that be cash or card? '
  payment_method = gets.chomp
  # payment for small tea
  if payment_method == 'cash' && size == small
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > tea_sm_price
      change = tea_sm_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your tea #{name}, have a nice day!"
    elsif ammount == tea_sm_price
      puts "Great! Here's your tea #{name}, have a nice day!"
    end
  end
  # payment for medium tea
  if payment_method == 'cash' && size == medium
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > tea_md_price
      change = tea_md_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your tea #{name}, have a nice day!"
    elsif ammount == tea_md_price
      puts "Great! Here's your tea #{name}, have a nice day!"
    end
  end
  # payment for large tea
  if payment_method == 'cash' && size == large
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > tea_lg_price
      change = tea_lg_price - ammount
      change = change.round(3)
      puts "Your change is #{change}. Here is your tea #{name}, have a nice day!"
    elsif ammount == tea_lg_price
      puts "Great! Here's your tea #{name}, have a nice day!"
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
      puts "Excellent, here is your tea #{name}, have a great day!"
    end
    if card_method == 'debit'
      print 'Please enter your pin: '
      pin = gets.chomp.to_i
      sleep 5
      if pin != 0000
        puts 'Declined!'
        sleep 1
        puts "Sorry #{name} no tea for you! "
        sleep 2
        print 'Try again, please enter your pin: '
        pin = gets.chomp.to_i
        sleep 5
        if pin == 0000
          puts 'Approved!'
          sleep 1
          puts "Excellent, here is your tea #{name}, have a great day!"
        end
      else
        puts 'Approved!'
        sleep 1
        puts "Excellent, here is your tea #{name}, have a great day!"
      end
    end
  end
end
