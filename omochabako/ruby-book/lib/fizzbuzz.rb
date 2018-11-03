def fizzbuzz(set_number)
    if set_number % 15 == 0
        'Fizz Buzz'
    
    elsif set_number % 3 == 0
        'Fizz'
    elsif set_number % 5 == 0
        'Buzz'
    else
        set_number
    end
end