⍝)COPY 5 FILE_IO.apl

∇R←DIRECTION C
  R←((C='(') + 1)⊃¯1 1
∇

∇R←Day1∆1 ;I
  I← FIO∆read_file '/home/ale/src/apl/aoc/input1.txt'
  R← +/DIRECTION¨ I
∇

∇R←Day1∆2 ;I
  I← FIO∆read_file '/home/ale/src/apl/aoc/input1.txt'
  R← (+\DIRECTION¨ I)⍳¯1
∇
