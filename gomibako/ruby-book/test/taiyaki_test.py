'''
Python
https://www.youtube.com/watch?v=HsivL1JBRaw
RubyのこれをPythonに移植してみよう！
'''
import unittest


class Taiyaki:
    def __init__(self, anko, size):
        self.anko = anko
        self.size = size


class TaiyakiTest(unittest.TestCase):

    def test_taiyaki(self):
        taiyaki_1 = Taiyaki('あんこ', 'ふつう')
        self.assertEqual('あんこ', taiyaki_1.anko)
        self.assertEqual('ふつう', taiyaki_1.size)

        taiyaki_2 = Taiyaki('白あん', '大きい')
        self.assertEqual('白あん', taiyaki_2.anko)
        self.assertEqual('大きい', taiyaki_2.size)


if __name__ == '__main__':
    unittest.main(exit=False)
