# Package

version       = "0.1.0"
author        = "wioenena-q"
description   = ".env Loader"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.6.4"

task test, "Run load test":
  withDir "tests":
    exec "nim c --hints:off -r load.nim "
