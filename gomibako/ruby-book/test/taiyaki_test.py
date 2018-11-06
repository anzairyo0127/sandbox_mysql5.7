'''
Python
https://www.youtube.com/watch?v=HsivL1JBRaw
RubyのこれをPythonに移植してみよう！
'''
import unittest


class Taiyaki:
    '''
    たい焼きの型でござるな
    '''

    def __init__(self, anko):
        self.anko = anko


class TaiyakiTest(unittest.TestCase):
    '''
    単体テストの呼び出しでござるな。
    '''

    def test_taiyaki(self):
        '''
        単体テスト本体でござるな。
        '''
        taiyaki_1 = Taiyaki('あんこ')
        print(taiyaki_1)
        taiyaki_2 = Taiyaki('白あん')
        print(taiyaki_2)


if __name__ == '__main__':
    unittest.main(exit=False)
