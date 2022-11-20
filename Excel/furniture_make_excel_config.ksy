meta:
  id: furniture_make_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: furniture_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_item_id
  - id: count
    type: aux_types::vlq_base128_le_u
    if: has_field_count
  - id: exp
    type: aux_types::vlq_base128_le_u
    if: has_field_exp
  - id: material_items
    type: array_of__id_count_config__length_s
    if: has_field_material_items
  - id: make_time
    type: aux_types::vlq_base128_le_u
    if: has_field_make_time
  - id: max_accelerate_time
    type: aux_types::vlq_base128_le_u
    if: has_field_max_accelerate_time
  - id: quick_fetch_material_num
    type: aux_types::vlq_base128_le_u
    if: has_field_quick_fetch_material_num
instances:
  has_field_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_furniture_item_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_count: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_exp: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_material_items: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_make_time: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_max_accelerate_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_quick_fetch_material_num: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
