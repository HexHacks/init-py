import unittest

from sample import get_code

class TestCoreMethods(unittest.TestCase):

    def test_get_code_returns_binarystring(self):
        code = get_code()
        chars = {c for c in code}
        io = {'1', '0'}
        self.assertEqual(io, chars)

