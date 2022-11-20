meta:
  id: select_action_point_by_id
  endian: le
  license: GPLv2
  imports:
    - config_action_point_select_type
    - ../../../aux_types
seq:
  - id: base
    type: config_action_point_select_type
  - id: bit_field
    type: u1
  - id: action_point_id
    type: aux_types::vlq_base128_le_u
    if: has_field_action_point_id
instances:
  has_field_action_point_id: # Field №0
    value: (bit_field & 0b1) != 0
