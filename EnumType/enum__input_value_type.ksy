meta:
  id: enum__input_value_type
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
    enum: input_value_type
enums:
  input_value_type:
    0: button_input
    1: one_axis_input
    2: two_axis_input
