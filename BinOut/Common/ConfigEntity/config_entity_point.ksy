meta:
  id: config_entity_point
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: u1
  - id: element_absorb
    type: aux_types::string
    if: has_field_element_absorb
  - id: element_pendant
    type: aux_types::string
    if: has_field_element_pendant
  - id: element_drop
    type: aux_types::string
    if: has_field_element_drop
  - id: bullet_aim
    type: aux_types::string
    if: has_field_bullet_aim
  - id: hit_points
    type: array_of__aux_types__string__length_u
    if: has_field_hit_points
  - id: selected_points
    type: array_of__aux_types__string__length_u
    if: has_field_selected_points
instances:
  has_field_element_absorb: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_element_pendant: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_element_drop: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_bullet_aim: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_hit_points: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_selected_points: # Field №5
    value: (bit_field & 0b100000) != 0
