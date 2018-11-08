class User

    def foo
        'foo'
    end

    def bar
        'bar'
    end

    private :foo, :bar

    def baz
        'baz'
    end
end
user = User.new
p user.bar