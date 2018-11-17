def greeting
    puts 'おはよう'
    yield
    yield
    puts 'こんばんは'
end

greeting {
    puts 'a'
}

