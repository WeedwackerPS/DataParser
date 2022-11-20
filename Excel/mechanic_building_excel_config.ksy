meta:
  id: mechanic_building_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/array_of__sgv_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: special_effect_level1
    type: aux_types::vlq_base128_le_u
    if: has_field_special_effect_level1
  - id: special_effect_level2
    type: aux_types::vlq_base128_le_u
    if: has_field_special_effect_level2
  - id: special_effect_id1
    type: aux_types::vlq_base128_le_u
    if: has_field_special_effect_id1
  - id: special_effect_id2
    type: aux_types::vlq_base128_le_u
    if: has_field_special_effect_id2
  - id: special_effect_desc1
    type: aux_types::vlq_base128_le_u
    if: has_field_special_effect_desc1
  - id: special_effect_desc2
    type: aux_types::vlq_base128_le_u
    if: has_field_special_effect_desc2
  - id: max_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_level
  - id: open_conds
    type: array_of__sgv_config__length_s
    if: has_field_open_conds
  - id: build_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_build_limit
  - id: is_enable_rotate
    type: u1
    if: has_field_is_enable_rotate
  - id: default_dungeon_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_default_dungeon_list
  - id: element_type
    type: aux_types::vlq_base128_le_u
    if: has_field_element_type
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gadget_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_special_effect_level1: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_special_effect_level2: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_special_effect_id1: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_special_effect_id2: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_special_effect_desc1: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_special_effect_desc2: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_max_level: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_open_conds: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_build_limit: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_is_enable_rotate: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_default_dungeon_list: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_element_type: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
