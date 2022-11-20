meta:
  id: enum__interrupt_button_type
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
    enum: interrupt_button_type
enums:
  interrupt_button_type:
    0: interrupt_button_type_none
    1: interrupt_button_type_host
    2: interrupt_button_type_all
