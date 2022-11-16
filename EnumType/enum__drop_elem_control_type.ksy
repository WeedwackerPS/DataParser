meta:
  id: enum__drop_elem_control_type
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
    enum: drop_elem_control_type
enums:
  drop_elem_control_type:
    0: all
    1: none
