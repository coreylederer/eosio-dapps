import unittest
import warnings
import json
import node
import sess
from eosf import *

CONTRACT_NAME = "arbitration/build"
set_verbose(False)

class Test1(unittest.TestCase):

    def run(self, result=None):
        """ Stop after first error """
        if not result.failures:
            super().run(result)

    
    @classmethod
    def setUpClass(cls):
        with warnings.catch_warnings():
            warnings.simplefilter("ignore")
            node.reset()
        sess.init()
        contract = Contract(CONTRACT_NAME)
        contract.deploy()

        
    def setUp(self):
        self.assertTrue(node.is_running(), "testnet failure")
        self.contract = Contract(CONTRACT_NAME)
        self.assertTrue(self.contract.is_created(), "contract failure")
        self.assertTrue(self.contract.is_deployed(), "deployment failure")


    def test_01(self):
        self.assertTrue(
            self.contract.push_action(
            "hi", 
            '{"user":"alice"}',
            sess.alice),
            "push_action hi 1")

        self.assertTrue(
            self.contract.push_action(
            "hi", 
            '{"user":"carol"}',
            sess.carol),
            "push_action hi 2")


    def test_02(self):
        """ This should fail due to authority mismatch """
        set_suppress_error_msg(True)
        self.assertFalse(
            self.contract.push_action(
            "hi", 
            '{"user":"carol"}',
            sess.alice),
            "push_action hi")
        set_suppress_error_msg(False)


    def tearDown(self):
        pass


    @classmethod
    def tearDownClass(cls):
        node.stop()


if __name__ == "__main__":
    unittest.main()
