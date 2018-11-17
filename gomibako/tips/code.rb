code = '[1,2,3].map{ |d| d * 10 }'

p eval(code)

puts `cat etc/fizzbuzz.rb`

puts %x{cat etc/fizzbuzz.rb}


str = 'a,b,c'

p str.send('upcase')

p str.send('split', ',')