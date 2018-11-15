retry_count = 0
puts '処理を開始するっす'
begin
    p 1/0
rescue 
    retry_count += 1
    if retry_count <= 3
        puts "retryします (#{retry_count}回目)"
        retry
    else
        puts 'retryに失敗しました' 
    end
end

