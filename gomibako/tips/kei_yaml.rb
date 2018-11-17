require 'yaml'

yaml = <<TEXT
alice:
    name: 'Alice'
    email: 'alice@example.com'
    age: 20
TEXT

user = YAML.load(yaml)

p user

user['alice']['gender'] = :female

puts YAML.dump(user)