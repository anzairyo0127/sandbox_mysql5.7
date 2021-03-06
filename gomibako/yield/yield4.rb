def greeting(&block)
    puts 'おはよう'
    text =
        if block.arity == 1
            yield 'こんにちは'
        elsif block.arity == 2
            yield 'こんに','ちは'
        end
    puts text
    puts 'こんばんは'
end

greeting do |text,text2|
    text * 2 + text2 * 2
end