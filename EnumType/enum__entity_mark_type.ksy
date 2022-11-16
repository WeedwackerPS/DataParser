meta:
  id: enum__entity_mark_type
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
    enum: entity_mark_type
enums:
  entity_mark_type:
    0: default
    1: show_effect
