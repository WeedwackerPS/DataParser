meta:
  id: config_action_token_channel
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: max_num
    type: aux_types::vlq_base128_le_s
    if: has_field_max_num
instances:
  has_field_max_num: # Field №0
    value: (bit_field & 0b1) != 0
