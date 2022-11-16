meta:
  id: enum__voice_personality
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: voice_personality
enums:
  voice_personality:
    0: first
    1: third
    2: npc
