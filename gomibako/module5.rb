#! ruby -Ku

module Loggable
    class << self
        def log(text)
            puts("[LOG]#{text}")
        end
    end
end

Loggable.log('すわちか')