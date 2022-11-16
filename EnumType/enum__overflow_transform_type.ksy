meta:
  id: enum__overflow_transform_type
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
    enum: overflow_transform_type
enums:
  overflow_transform_type:
    0: overflow_transform_none
    1: overflow_transform_player_exp
