module Loggable
    def log(text)
        "[LOG]#{text}"
    end
end

class Product
    extend Loggable
    def self.title
        log 'title is called.'
        'A great movie'
    end
end
p(Product.title)
p(Product.log('a'))