meta:
  id: cook_recipe_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__cook_food_type
    - ../EnumType/enum__cook_method_type
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: rank_level
    type: aux_types::vlq_base128_le_u
    if: has_field_rank_level
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: effect_desc
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_effect_desc
  - id: food_type
    type: enum__cook_food_type
    if: has_field_food_type
  - id: cook_method
    type: enum__cook_method_type
    if: has_field_cook_method
  - id: is_default_unlocked
    type: u1
    if: has_field_is_default_unlocked
  - id: max_proficiency
    type: aux_types::vlq_base128_le_u
    if: has_field_max_proficiency
  - id: quality_output_vec
    type: array_of__id_count_config__length_s
    if: has_field_quality_output_vec
  - id: input_vec
    type: array_of__id_count_config__length_s
    if: has_field_input_vec
  - id: qte_param
    type: aux_types::string
    if: has_field_qte_param
  - id: qte_quality_weight_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_qte_quality_weight_vec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_rank_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_icon: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_effect_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_food_type: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_cook_method: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_default_unlocked: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_max_proficiency: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_quality_output_vec: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_input_vec: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_qte_param: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_qte_quality_weight_vec: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
