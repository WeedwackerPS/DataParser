meta:
  id: enum__target_pos_to_self_pos_type
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
    enum: target_pos_to_self_pos_type
enums:
  target_pos_to_self_pos_type:
    0: xz
    1: y
    2: xyz
