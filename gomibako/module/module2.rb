#! ruby -Ku

module Taggable
    def price_tag
        "#{self.price}円"
    end
end

class Product
    include Taggable

    def price
        1000
    end

end


product = Product.new

p(product.price_tag)

p(Array.include?(Enumerable))
p(Hash.include?(Enumerable))
p(Range.include?(Enumerable))

