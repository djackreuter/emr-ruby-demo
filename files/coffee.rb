# welcome and get name
print 'Welcome to Ruby Coffee! What is your name? '
name = gets.chomp
name = name.capitalize

# take order
print "Thanks #{name}!, would you like coffee or tea today?"
beverage = gets.chomp

coffee_sm_price = 3.95
coffee_md_price = 4.75
coffee_lg_price = 6.95
coffee_sm = 'small'
coffee_md = 'medium'
coffee_lg = 'large'
if beverage == 'coffee'
  puts 'Great choice!'
  sleep 1
  print 'Our coffee comes in three sizes.'
  sleep 0.5
  print "Our small coffee is #{coffee_sm_price}, our medium is #{coffee_md_price}, and our large is #{coffee_lg_price}"
  sleep 1
  print 'What size would you like today? '
  size = gets.chomp
  if size == coffee_sm
    print "Great! Your #{coffee_sm} is going to be #{coffee_sm_price}."
  elsif size == coffee_md
    print "Great! Your #{coffee_md} is going to be #{coffee_md_price}."
  elsif size == coffee_lg
    print "Great! Your #{coffee_lg} is going to be #{coffee_lg_price}."
  end
  print 'Will that be cash or card? '
  payment_method = gets.chomp
  if payment_method == 'cash'
    print 'Please enter amount '
    ammount = gets.chomp.to_i
    if ammount == 
  end
  
end
