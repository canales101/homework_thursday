puts "How much is the bill?"
bill = gets.chomp.to_f
puts "The bill is $#{bill}"

total = bill * 1.20
puts "the total is $#{'%.2f' % total}"
