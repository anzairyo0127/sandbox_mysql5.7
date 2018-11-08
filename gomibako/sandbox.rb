#! ruby -Ku


=begin
numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
    puts(n)
    break if n == 5
end

ret = 
    while true
        break
    end

p(ret)

text = '私の郵便番号は1234567です。'
p(text)
p(text.gsub(/(\d{3})(\d{4})/, '\1-\2'))
text = '僕の住所は6770056 兵庫県西脇市板並町1234だよ。'
p(text)
p(text.gsub(/(\d{3})(\d{4})/, '\1-\2'))


regex = /\d{3}-\d{4}/
p(regex.class)
p('hello' =~ /\d{3}-\d{4}/)

if '123-4567' =~ regex
    p('マッチしました')
else
    p('マッチしませんでした')
end

p('hello' !~ /\d{3}-\d{4}/)

p('123-4567' !~ /\d{3}-\d{4}/)


text = '私の誕生日は1977年7月17日です。'
p(text)
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p(m[1])
p(m[2])
p(m[3])
p(m[0])

text = '私の誕生日は1977年7月17日です。'
p(text)
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

p(m[:year])
p(m[:month])
p(m[:day])

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
    puts("#{year}/#{month}/#{day}")
end

p('123 456 789'.scan(/\d+/))

p('1977年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/))

text = '私の郵便番号は123-4567です。'

p(text[/\d{3}-\d{4}/])

text = '123-4567 456-7890'
p(text[/(\d{3})-(\d{4})/, 2])

text = '1977年7月17日'
p(text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day])

text = '私の郵便番号は123-4567です。'
p(text.slice(/\d{3}-\d{4}/))

text = '私の誕生日は1977年7月17日です。'
p(text.slice(/(\d+)年(\d+)月(\d+)日/, 3))
p(text)
p(text.slice!(/(\d+)年(\d+)月(\d+)日/))
p(text)

text = '123,456-789'
p(text.split(','))
p(text.split(/,|-/))
text = '123,456-789'
p(text.gsub(',', ':'))

p(text.gsub(/,|-/, ':'))
text = '私の誕生日は1977年7月17日です。'
p(text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3'))

p(
    text.gsub(
        /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 
        '\k<year>-\k<month>-\k<day>'
    )
)


text = '123,194-0044'
hash = {
    ',' => ':', 
    '-' => '/'
}
p(text.gsub(/,|-/, hash))

text.gsub(/,|-/){ |matched| matched == ',' ? ':' : '/' } #123:194/004 

Regexp.new('\d{3}-\d{4}')
/http:\/\/example\.com/
%r!http://example\.com!
%r{http://example\.com}
=end


pattern = '\d{3}-\d{4}'
p('123-4567' =~ /#{pattern}/)

text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
    puts('郵便番号です')
when /^\d{4}\/\d{1, 2}\/\d{1,2}$/
    puts('日付です')
when /^\d+-\d+-\d+$/
    puts('電話番号です')
end


p('HELLO' =~ /hello/i)
p('HELLO' =~ %r{hello}i)

text = '私の誕生日は1977年7月17日です。'

text =~ /(\d+)年(\d+)月(\d+)日/

p($~)
p($1)
p($2)
p($3)
p(Regexp.last_match)
p(Regexp.last_match(1))
p(Regexp.last_match(2))
p(Regexp.last_match(3))
p(Regexp.last_match(-1))


p(/\d{3}-\d{4}/.match?('123-4567'))
p(Regexp.last_match)
p($~)
