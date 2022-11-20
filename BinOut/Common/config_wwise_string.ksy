meta:
  id: config_wwise_string
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: text
    type: aux_types::string
    if: has_field_text
instances:
  has_field_text: # Field №0
    value: (bit_field & 0b1) != 0
