begin
    p 'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
    puts "０を割ろうとしたか、存在しないメソッドを呼び出したね？"
    puts "エラー： #{e.class} #{e.message}"
end