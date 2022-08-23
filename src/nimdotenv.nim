from os import getAppDir, DirSep
from strutils import splitLines, startsWith, isEmptyOrWhitespace, split, strip
from tables import initTable, `[]=`, Table
from sequtils import filter
from sugar import `=>`


proc load*(filepath: string = getAppDir() & DirSep & ".env"): Table[string, string] =
  ## Load environment variables from a .env files.
  var env = initTable[string, string]()
  
  let contents = readFile(filepath);

  let lines = contents.splitLines.filter(line => not (line.startsWith('#') or line.isEmptyOrWhitespace)) # Split lines, filter comments and empty lines

  for line in lines:
    let keyVal = line.split '='
    env[keyVal[0].strip] = keyVal[1].strip

  result = env

