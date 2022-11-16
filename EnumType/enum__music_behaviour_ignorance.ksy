meta:
  id: enum__music_behaviour_ignorance
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_u
instances:
  value:
    value: data.value
    enum: music_behaviour_ignorance
enums:
  music_behaviour_ignorance:
    1: beat
    2: bar
    4: grid
    8: cue
    16: exit
    32: time
    64: stimulus
