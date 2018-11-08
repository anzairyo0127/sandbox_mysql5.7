class Product
    DEFAULT_PRICE = 0

    def self.default_price
        DEFAULT_PRICE
    end

    def default_price
        DEFAULT_PRICE
    end
end    

p(Product.default_price)

product = Product.new
p(product.default_price)