import unittest

from nimdotenv import load
from tables import pairs
from os import getAppDir, DirSep

suite "nimdotenv":
  test "load with default path":
    let env = load();
    for (key, value) in env.pairs:
      assert key == "KEY"
      assert value == "value"
  test "load with another path":
    let env = load(getAppDir() & DirSep & "envFiles" & DirSep & ".otherenv");
    for (key, value) in env.pairs:
      assert key == "KEY"
      assert value == "value"