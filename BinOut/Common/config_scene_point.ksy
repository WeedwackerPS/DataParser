meta:
  id: config_scene_point
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__scene_point_type
    - vector
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: type
    type: enum__scene_point_type
    if: has_field_type
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
  - id: pos
    type: vector
    if: has_field_pos
  - id: rot
    type: vector
    if: has_field_rot
  - id: tran_pos
    type: vector
    if: has_field_tran_pos
  - id: tran_rot
    type: vector
    if: has_field_tran_rot
  - id: unlocked
    type: u1
    if: has_field_unlocked
  - id: alias
    type: aux_types::string
    if: has_field_alias
  - id: group_limit
    type: u1
    if: has_field_group_limit
  - id: is_model_hidden
    type: u1
    if: has_field_is_model_hidden
instances:
  has_field_type: # Field №0
    value: (bit_field.value & 0b00000000001) != 0
  has_field_gadget_id: # Field №1
    value: (bit_field.value & 0b00000000010) != 0
  has_field_area_id: # Field №2
    value: (bit_field.value & 0b00000000100) != 0
  has_field_pos: # Field №3
    value: (bit_field.value & 0b00000001000) != 0
  has_field_rot: # Field №4
    value: (bit_field.value & 0b00000010000) != 0
  has_field_tran_pos: # Field №5
    value: (bit_field.value & 0b00000100000) != 0
  has_field_tran_rot: # Field №6
    value: (bit_field.value & 0b00001000000) != 0
  has_field_unlocked: # Field №7
    value: (bit_field.value & 0b00010000000) != 0
  has_field_alias: # Field №8
    value: (bit_field.value & 0b00100000000) != 0
  has_field_group_limit: # Field №9
    value: (bit_field.value & 0b01000000000) != 0
  has_field_is_model_hidden: # Field №10
    value: (bit_field.value & 0b10000000000) != 0
