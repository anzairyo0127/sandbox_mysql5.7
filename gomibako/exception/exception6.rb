begin
    Foo.new
rescue NoMethodError
    puts "NoMethodErrorです"
rescue NameError
    puts "NameErrorです" # !
end