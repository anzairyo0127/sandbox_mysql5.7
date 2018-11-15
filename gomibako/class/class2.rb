class Product
    attr_reader :name, :price

    def initialize(name,price)
        @name = name
        @price = price
    end

    def to_s
        "name: #{name}, price: #{price}"
    end
end

class DVD < Product
    attr_reader :name, :price, :running_time

    def initialize(name, price, running_time)
        super(name, price)
        @running_time = running_time
    end
    
    def to_s
        "#{super}, running_time: #{running_time}"
    end


end

product = Product.new('A great move', 1000)
p product.name
p product.price
p product.to_s

dvd = DVD.new('A great move', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time
p dvd.to_s