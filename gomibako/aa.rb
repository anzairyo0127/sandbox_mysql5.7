def defalut_args(a,b,c = 0, d = 0)
    puts("a=#{a} b=#{b} c=#{c} d=#{d}")
end

defalut_args(1,2,3,4)

def foo(time = Time.now, message = bar)
    puts("time: #{time}, message: #{message}")
end

def bar
    'bar'
end

foo