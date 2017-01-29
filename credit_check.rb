

card_number = "4024007136512380"
valid = false
digits = card_number.split"".reverse
odd_indexes = []
even_indexes = []


digits.each_index do |index|
  if index.odd? == true
    odd_indexes << digits[index]
  else
    even_indexes << digits[index]
  end
end

even_indexes.map!(&:to_i)
odd_indexes.map!(&:to_i)

even_indexes.map! do |number| 
  number = number * 2
  if number > 9
    number = number.to_s[0].to_i + number.to_s[-1].to_i
  else
    number
  end
end

sum = 0

even_indexes.each { |item| sum += item }
odd_indexes.each { |item| sum += item}

if sum % 10 == 0
  puts "This number is valid!"
else
  puts "This number is invalid!"
end



=begin
Starting from the right of the number, double every second digit
If the product of double that digit is greater than 9, then sum the digits of the product.
  (7 * 2 = 14, 1 + 4 = 5)
sum all the digits in the array
if the sum of all the digits modul0 10 is 0, then the card number is valid.
output this is a valid card number


=end




# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
