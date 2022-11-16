meta:
  id: enum__modifier_time_scale
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
    enum: modifier_time_scale
enums:
  modifier_time_scale:
    0: owner
    1: level
