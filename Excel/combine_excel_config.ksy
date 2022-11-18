meta:
  id: combine_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - Common/array_of__id_count_config__length_s
    - Common/array_of__random_item_config__length_s
    - ../EnumType/enum__recipe_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: combine_id
    type: aux_types::vlq_base128_le_u
    if: has_field_combine_id
  - id: player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_player_level
  - id: is_default_show
    type: u1
    if: has_field_is_default_show
  - id: combine_type
    type: aux_types::vlq_base128_le_u
    if: has_field_combine_type
  - id: sub_combine_type
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_combine_type
  - id: result_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_result_item_id
  - id: result_item_count
    type: aux_types::vlq_base128_le_u
    if: has_field_result_item_count
  - id: scoin_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_scoin_cost
  - id: random_items
    type: array_of__random_item_config__length_s
    if: has_field_random_items
  - id: material_items
    type: array_of__id_count_config__length_s
    if: has_field_material_items
  - id: effect_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_effect_desc
  - id: recipe_type
    type: enum__recipe_type
    if: has_field_recipe_type
instances:
  has_field_combine_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_player_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_default_show: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_combine_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_sub_combine_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_result_item_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_result_item_count: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_scoin_cost: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_random_items: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_material_items: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_effect_desc: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_recipe_type: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
