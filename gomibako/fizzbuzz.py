import unittest


def fizzbuzz(number):
    if number % 15 == 0:
        return 'FizzBuzz'
    elif number % 3 == 0:
        return 'Fizz'
    elif number % 5 == 0:
        return 'Buzz'
    else:
        return number


class TestFizzBuzz(unittest.TestCase):

    def test_fizzbuzz(self):
        self.assertEqual(1, fizzbuzz(1))
        self.assertEqual(2, fizzbuzz(2))
        self.assertEqual('Fizz', fizzbuzz(3))
        self.assertEqual('Buzz', fizzbuzz(5))
        self.assertEqual('FizzBuzz', fizzbuzz(15))
        self.assertEqual(49, fizzbuzz(49))


if __name__ == '__main__':
    unittest.main(exit=False)
