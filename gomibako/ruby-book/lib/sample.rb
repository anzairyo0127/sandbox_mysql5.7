def add(a,b)
    a + b 
end

puts(add(1,3))


def greeting(country)
    return 'countryを入力してください' if country.nil?
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

puts(greeting(nil))
puts(greeting('japan'))


def forever dragon
    if dragon == 'red'
        puts('anger')
    else
        puts('nuwaaa')
    end
end