require_relative 'deep_freeze'

class Bank
    extend DeepFreezable
    CURRENCIES = deep_freeze(
        {
            'japan' => 'yen',
            'US' => 'dollar',
            'Indeia' => 'rupee'
        }
    )
end