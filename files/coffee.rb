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
  size = gets.chomp
  if size == coffee_sm
    print "Great! Your #{coffee_sm} is going to be #{coffee_sm_price}. "
  elsif size == coffee_md
    print "Great! Your #{coffee_md} is going to be #{coffee_md_price}. "
  elsif size == coffee_lg
    print "Great! Your #{coffee_lg} is going to be #{coffee_lg_price}. "
  end
  print 'Will that be cash or card? '
  payment_method = gets.chomp
  if payment_method == 'cash' && size == coffee_sm
    print 'Please enter amount: '
    ammount = gets.chomp.to_f
    if ammount > coffee_sm_price
      change = coffee_sm_price - ammount
      puts "Your change is #{change}. Here is your drink, have a nice day!"
    elsif ammount == coffee_sm_price
      puts "Great! Here's your drink, have a nice day!"
    end
  end
  
end