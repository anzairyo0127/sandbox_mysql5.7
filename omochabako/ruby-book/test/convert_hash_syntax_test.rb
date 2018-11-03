require 'minitest/autorun'
require '../lib/convert_hash_syntax'

class ConvertHashSyntax < Minitest::Test
    def test_convert_hash_syntax()
        old_syntax = <<~TEXT
        {
            :name => 'Alice',
            :age=>20,
            :gender  =>  :female
        }
        TEXT
        
        expect = <<~TEXT
        {
            name: 'Alice',
            age: 20,
            gender: :female
        }
        TEXT
        # 実行結果をいったん変数に入れて、コンソールに出力する
        actual = convert_hash_syntax(old_syntax)
        puts(actual)
        assert_equal(expect , convert_hash_syntax(old_syntax))
    end
end
