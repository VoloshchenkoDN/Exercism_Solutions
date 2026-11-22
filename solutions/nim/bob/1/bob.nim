import strutils, unicode

proc isWhiteSpaceOnly(s: string): bool =
  if s.len == 0: return true
  for r in s.runes:
    if not r.isWhiteSpace:
      return false
  true

proc isShouting(s: string): bool =
  var hasLetter = false
  for r in s.runes:
    if r.isAlpha:
      hasLetter = true
      if r != r.toUpper:
        return false
  hasLetter

proc hey*(s: string): string =
  let str = strip(s, leading = false, trailing = true)

  if str.isWhiteSpaceOnly:
    "Fine. Be that way!"
  elif str[^1] == '?':
    if isShouting(str): "Calm down, I know what I'm doing!" else: "Sure."
  elif isShouting(str):
    "Whoa, chill out!"
  else:
    "Whatever."
