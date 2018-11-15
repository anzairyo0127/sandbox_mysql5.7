def currency_of(country)
    case country
    when :japan
        p 'yen'
    when :us
        p 'dollar'
    when :india
        p 'rupee'
    else
        raise ArgumentError "無効な国名です。#{country}"
    end
end

currency_of(:italy)