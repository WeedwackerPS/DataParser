meta:
  id: enum__world_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: world_type
enums:
  world_type:
    0: world_none
    1: world_player
    2: world_home
