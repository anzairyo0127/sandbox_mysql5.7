'''
Python
https://www.youtube.com/watch?v=HsivL1JBRaw
RubyのこれをPythonに移植してみよう！
'''
import unittest


class Taiyaki:
    def __init__(self, anko):
        self.anko = anko


class TaiyakiTest(unittest.TestCase):

    def test_taiyaki(self):
        taiyaki_1 = Taiyaki('あんこ')
        self.assertEqual('あんこ', taiyaki_1.anko)
        taiyaki_2 = Taiyaki('白あん')
        self.assertEqual('白あん', taiyaki_2.anko)


if __name__ == '__main__':
    unittest.main(exit=False)
