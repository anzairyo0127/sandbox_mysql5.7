p File.exists?('etc/secret.txt')
p Dir.exists?('./etc')

File.open('etc/fizzbuzz.rb', 'r') do |f|
    puts f.readlines.count
end

File.open('etc/hello_world.txt', 'w') do |f|
    f.puts 'Hello, World!'
end

require 'fileutils'

FileUtils.mv('etc/hello_world.txt', 'etc/hello_world.rb')
FileUtils.mv('etc/hello_world.rb', 'etc/hello_world.txt')

