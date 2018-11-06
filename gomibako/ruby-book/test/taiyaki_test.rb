'''
Ruby
https://www.youtube.com/watch?v=HsivL1JBRaw
これをPython→Rubyでやってみよう
'''

require 'minitest/autorun'


class Taiyaki
    attr_reader :anko, :size

    def initialize(anko, size)
        @anko = anko
        @size = size
    end
end

class TaiyakiTest < Minitest::Test
    
    def test_taiyaki
        taiyaki_1 = Taiyaki.new('あんこ', 'ふつう')
        assert_equal 'あんこ', taiyaki_1.anko
        assert_equal 'ふつう', taiyaki_1.size
        
        taiyaki_2 = Taiyaki.new('白あん', '大きい')
        assert_equal '白あん', taiyaki_2.anko
        assert_equal '大きい', taiyaki_2.size
    end
end
