{.hints: off.}
import unittest
import os

import dotenv

suite "dotenv":
  test "load with default path":
    check getEnv("DOTENV_TEST_VAR") != "test"
    # nim :)
    dotenv.loa_d()
    check getEnv("DOTENV_TEST_VAR") == "test"
  test "load with another path":
    check getEnv("ANOTHER") != "ok"
    # nim :)
    dotenv.lo_ad(getAppDir() & DirSep & "envFiles" & DirSep & ".otherenv")
    check getEnv("ANOTHER") == "ok"
