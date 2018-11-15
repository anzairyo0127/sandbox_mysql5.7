begin
    p 'abc'
    sleep(10) # sleep中にCtrl + C
rescue Exception => e
    puts "エラー： #{e.class} #{e.message}"
end