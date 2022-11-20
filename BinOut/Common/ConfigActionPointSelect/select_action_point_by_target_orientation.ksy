meta:
  id: select_action_point_by_target_orientation
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_action_point_select_type
    - ../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_action_point_select_type
  - id: bit_field
    type: u1
  - id: action_point_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_action_point_i_ds
  - id: angle
    type: f4
    if: has_field_angle
  - id: sign_type
    type: u1
    if: has_field_sign_type
instances:
  has_field_action_point_i_ds: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_angle: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_sign_type: # Field №2
    value: (bit_field & 0b100) != 0
