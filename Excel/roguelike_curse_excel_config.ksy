meta:
  id: roguelike_curse_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
    - ../ArrayType/array_of__u1__length_u
    - Common/roguelike_effect_excel_config
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: curse_name
    type: aux_types::vlq_base128_le_u
    if: has_field_curse_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: effect_config
    type: roguelike_effect_excel_config
    if: has_field_effect_config
  - id: is_dynamic_show
    type: u1
    if: has_field_is_dynamic_show
  - id: is_clear_at_next_level
    type: u1
    if: has_field_is_clear_at_next_level
  - id: desc_param_list
    type: array_of__f4__length_u
    if: has_field_desc_param_list
  - id: desc_param_superposition_list
    type: array_of__u1__length_u
    if: has_field_desc_param_superposition_list
instances:
  has_field_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_curse_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_effect_config: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_dynamic_show: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_clear_at_next_level: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_desc_param_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_desc_param_superposition_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
