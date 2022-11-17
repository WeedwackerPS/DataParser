meta:
  id: home_world_custom_furniture_slot_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: slot_name
    type: aux_types::vlq_base128_le_u
    if: has_field_slot_name
  - id: no_parts_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_no_parts_tips
  - id: get_parts_tips
    type: aux_types::vlq_base128_le_u
    if: has_field_get_parts_tips
  - id: root_gadget_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_root_gadget_id_list
  - id: slot_identifier_path_list
    type: array_of__aux_types__string__length_u
    if: has_field_slot_identifier_path_list
  - id: dependent_slot_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_dependent_slot_id_list
  - id: effect_slot_select
    type: aux_types::string
    if: has_field_effect_slot_select
  - id: effect_parts_setup
    type: aux_types::string
    if: has_field_effect_parts_setup
  - id: slot_id
    type: aux_types::vlq_base128_le_u
    if: has_field_slot_id
  - id: optional_parts_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_optional_parts_id_list
  - id: is_necessary
    type: u1
    if: has_field_is_necessary
  - id: default_parts_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_default_parts_id_list
  - id: init_parts_id
    type: aux_types::vlq_base128_le_u
    if: has_field_init_parts_id
instances:
  has_field_slot_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_no_parts_tips: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_get_parts_tips: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_root_gadget_id_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_slot_identifier_path_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_dependent_slot_id_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_effect_slot_select: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_effect_parts_setup: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_slot_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_optional_parts_id_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_necessary: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_default_parts_id_list: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_init_parts_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
