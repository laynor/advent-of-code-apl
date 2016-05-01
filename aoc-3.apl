⍝ --- Day 3: Perfectly Spherical Houses in a Vacuum ---

⍝ Santa is delivering presents to an infinite two-dimensional grid of houses.

⍝ He begins by delivering a present to the house at his starting location, and
⍝ then an elf at the North Pole calls him via radio and tells him where to move
⍝ next. Moves are always exactly one house to the north (^), south (v), east
⍝ (>), or west (<). After each move, he delivers another present to the house at
⍝ his new location.

⍝ However, the elf back at the north pole has had a little too much eggnog, and
⍝ so his directions are a little off, and Santa ends up visiting some houses
⍝ more than once. How many houses receive at least one present?

⍝ For example:

⍝ > delivers presents to 2 houses: one at the starting location, and one to the
⍝ east.

⍝ ^>v< delivers presents to 4 houses in a square, including twice to the house
⍝ at his starting/ending location.

⍝ ^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2
⍝ houses.


⍝ Goto based solution
∇R ← ∆1 M
  →(M = '^')/UP
  →(M = '<')/LEFT
  →(M = '>')/RIGHT
  →(M = 'v')/DOWN
  R←0
  →0
DOWN:
  R←0 ¯1
  →0
UP:
  R←0 1
  →0
LEFT:
  R←¯1 0
  →0
RIGHT:
  R←1 0
∇

∇R ← ∆s M
  R←(M='^')×0 1
  R←R+(M='v')×0 ¯1
  R←R+(M='<')×¯1 0
  R←R+(M='>')×1 0
∇

∇R←Day3∆1
  I← FIO∆read_file input3.txt
  ⍝ transform the input I to a list of displacement vectors,
  ⍝ calculate the position at each input summing the displacement vectors
  ⍝ uniquify, and return the vector dimension
  R← ⍴∪(⊂0 0),(+\∆s¨I)
∇
