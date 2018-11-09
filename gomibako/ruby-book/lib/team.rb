require_relative 'deep_freeze'

class Team
    extend DeepFreezable
    
    COUNTRIES = deep_freeze(['Japan','US', 'India'])
end