class User
    def self.hello
        'Hello!'
    end
    private_class_method:hello
end

p User.hello