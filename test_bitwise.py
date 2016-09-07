import ctypes
import unittest

class TestBitwise(unittest.TestCase):
    def test_lowest_one(self):
        lib = ctypes.cdll.LoadLibrary("./bitwise.so") 
        x = 104
        res = lib.lowest_one(x)
        self.assertEqual(res, 8)

