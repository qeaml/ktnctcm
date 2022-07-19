from dataclasses import dataclass
from typing import List

@dataclass
class Group:
  region: int
  enemies: List[str]

def main(args) -> int:
  if len(args) < 2:
    print(f"Usage: {args[0]} <wave definition file>")
    return 1
  for fn in args[1:]:
    if (ret := gen_wave(fn)) != 0:
      return ret
  return 0

def gen_wave(fn: str) -> int:
  if not fn.endswith(".txt"):
    fn = fn + ".txt"
  print(f"Reading wave definition from {fn}")

  wave_no: int = -1
  groups: List[Group] = []
  curr_group: Group = None
  with open(fn, "rt") as f:
    for line_no, line in enumerate(f):
      line = line.strip()
      if line == "" or line[0] == "#":
        continue
      line = line.expandtabs(tabsize=2)
      while "  " in line:
        line = line.replace("  ", " ")
      words = line.split(" ")
      
      if words[0] == "region":
        if curr_group is not None:
          groups.append(curr_group)
        region: int = 0
        try:
          region = int(words[1])
        except ValueError as e:
          print(f"error on line {line_no+1}:")
          print(f"  invalid region number: {e}")
          return 2
        curr_group = Group(region, [])
      elif words[0] == "summon":
        curr_group.enemies.append(words[1])
      elif words[0] == "wave":
        try:
          wave_no = int(words[1])
        except ValueError as e:
          print(f"error on line {line_no+1}:")
          print(f"  invalid wave number: {e}")
          return 3
  if curr_group is not None:
    groups.append(curr_group)
  
  if wave_no == -1:
    print("error:")
    print("  no wave number specified")
    return 4

  print(f"Read {len(groups)} groups for wave {wave_no}")
  out_fn = f"{wave_no}.mcfunction"
  print(f"Writing wave to {out_fn}")
  try:
    f = open(out_fn, "xt")
  except:
    f = open(out_fn, "wt")
  f.close()
  with open(out_fn, "at") as f:
    f.write('title @a title {"text":"Wave %d","color":"dark_green","bold":true}\n' % wave_no)
    for group in groups:
      for enemy in group.enemies:
        f.write(f"function kt:spawn/region_{group.region}\n")
        f.write(f"function kt:summon/{enemy}\n")

  print("Done")
  return 0

if __name__ == "__main__":
  from sys import argv
  print()
  ret = main(argv)
  print()
  exit(ret)
