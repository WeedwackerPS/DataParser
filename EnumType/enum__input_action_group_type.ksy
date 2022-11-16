meta:
  id: enum__input_action_group_type
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
    enum: input_action_group_type
enums:
  input_action_group_type:
    0: all
    1: gameplay
    2: menu
