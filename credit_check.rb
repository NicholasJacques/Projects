card_number = "342804633855673"
counter = 0
sum = 0

card_number = card_number.split""

card_number.reverse_each do |number|
  number = number.to_i
  #if counter is odd multiple number by two
  if counter.odd?
    number *= 2
  end
  #if number  is greater than 9 then add the two digits together
  if number > 9
    number = number.to_s[0].to_i + number.to_s[-1].to_i
  end

  #add number to sum
  sum += number
  counter += 1
end

if sum % 10 == 0
  puts "This is a valid card number"
else
  puts "This is an invalid number"
end