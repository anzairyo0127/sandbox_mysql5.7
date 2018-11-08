class Product
    SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
    def self.names_without_foo(names = SOME_NAMES)
        #
        names.delete('Foo')
        names
    end
end

Product::SOME_NAMES[0].upcase!
p(Product::SOME_NAMES)

