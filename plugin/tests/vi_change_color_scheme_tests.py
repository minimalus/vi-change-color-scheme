import unittest
import vi_change_color_scheme as sut


@unittest.skip("Don't forget to test!")
class ViChangeColorSchemeTests(unittest.TestCase):

    def test_example_fail(self):
        result = sut.vi_change_color_scheme_example()
        self.assertEqual("Happy Hacking", result)
