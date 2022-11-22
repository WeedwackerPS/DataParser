meta:
  id: config_lc_base_intee
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../Common/vector
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: trigger_shape_in
    type: aux_types::string
    if: has_field_trigger_shape_in
  - id: trigger_shape_in_height
    type: f4
    if: has_field_trigger_shape_in_height
  - id: trigger_shape_out
    type: aux_types::string
    if: has_field_trigger_shape_out
  - id: trigger_shape_out_height
    type: f4
    if: has_field_trigger_shape_out_height
  - id: trigger_shape_in_offset
    type: vector
    if: has_field_trigger_shape_in_offset
  - id: trigger_shape_out_offset
    type: vector
    if: has_field_trigger_shape_out_offset
  - id: trigger_shape_free_interaction
    type: aux_types::string
    if: has_field_trigger_shape_free_interaction
  - id: trigger_shape_free_interaction_height
    type: f4
    if: has_field_trigger_shape_free_interaction_height
  - id: trigger_shape_free_interaction_offset
    type: vector
    if: has_field_trigger_shape_free_interaction_offset
instances:
  has_field_trigger_shape_in: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_trigger_shape_in_height: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_trigger_shape_out: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_trigger_shape_out_height: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_trigger_shape_in_offset: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_trigger_shape_out_offset: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_trigger_shape_free_interaction: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_trigger_shape_free_interaction_height: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_trigger_shape_free_interaction_offset: # Field №8
    value: (bit_field.value & 0b100000000) != 0
