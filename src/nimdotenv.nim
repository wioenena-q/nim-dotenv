from os import getAppDir, DirSep, putEnv
from strutils import split, startsWith

proc load*(filepath: string = getAppDir() & DirSep & ".env"): void =
  let content = readFile(filepath)
  let lines = split(content, "\n")
  for line in lines:
    if startsWith(line, "#"):
      continue
    let keyVal = split(line, "=")
    putEnv(keyVal[0], keyVal[1])
