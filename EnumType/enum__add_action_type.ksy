meta:
  id: enum__add_action_type
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
    enum: add_action_type
enums:
  add_action_type:
    0: idle
    1: reset_global_value
