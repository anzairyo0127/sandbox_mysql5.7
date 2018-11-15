print 'Text?:'
text = gets.chomp
puts text
begin
    print 'Pattern?:'
    pattern = gets.chomp
    regexp = Regexp.new(pattern)
rescue => e
    puts "Invlid pattern: #{e.message}"
    retry
end

matches = text.scan(regexp)
if matches.size > 0
    puts "Matched: #{matches.join(', ')}"
else
    puts 'Nothing matched'
end