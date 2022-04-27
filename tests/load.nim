import unittest
import os

import nimdotenv

suite "nimdotenv":
  test "load with default path":
    check getEnv("DOTENV_TEST_VAR") != "test"
    # nim :)
    nimdotenv.loa_d()
    check getEnv("DOTENV_TEST_VAR") == "test"
  test "load with another path":
    check getEnv("ANOTHER") != "ok"
    # nim :)
    nimdotenv.lo_ad(getAppDir() & DirSep & "envFiles" & DirSep & ".otherenv")
    check getEnv("ANOTHER") == "ok"
