meta:
  id: enum__qte_step_button_input_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: qte_step_button_input_type
enums:
  qte_step_button_input_type:
    0: qte_step_button_input_jump
