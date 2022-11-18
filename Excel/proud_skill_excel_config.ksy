meta:
  id: proud_skill_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../ArrayType/array_of__f4__length_u
    - ../EnumType/enum__proud_life_effect_type
    - ../EnumType/enum__talent_filter_cond
    - Common/array_of__id_count_config__length_s
    - Common/array_of__prop_val_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: proud_skill_id
    type: aux_types::vlq_base128_le_u
    if: has_field_proud_skill_id
  - id: proud_skill_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_proud_skill_group_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: proud_skill_type
    type: aux_types::vlq_base128_le_u
    if: has_field_proud_skill_type
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: unlock_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_desc
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: coin_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_coin_cost
  - id: cost_items
    type: array_of__id_count_config__length_s
    if: has_field_cost_items
  - id: filter_conds
    type: array_of__enum__talent_filter_cond__length_s
    if: has_field_filter_conds
  - id: break_level
    type: aux_types::vlq_base128_le_u
    if: has_field_break_level
  - id: param_desc_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_param_desc_list
  - id: life_effect_type
    type: enum__proud_life_effect_type
    if: has_field_life_effect_type
  - id: life_effect_params
    type: array_of__aux_types__string__length_u
    if: has_field_life_effect_params
  - id: effective_for_team
    type: s1
    if: has_field_effective_for_team
  - id: is_hide_life_proud_skill
    type: u1
    if: has_field_is_hide_life_proud_skill
  - id: open_config
    type: aux_types::string
    if: has_field_open_config
  - id: add_props
    type: array_of__prop_val_config__length_s
    if: has_field_add_props
  - id: param_list
    type: array_of__f4__length_u
    if: has_field_param_list
instances:
  has_field_proud_skill_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_proud_skill_group_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_proud_skill_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_name: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_unlock_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_icon: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_coin_cost: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_cost_items: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_filter_conds: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_break_level: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_param_desc_list: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_life_effect_type: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_life_effect_params: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_effective_for_team: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_is_hide_life_proud_skill: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_open_config: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_add_props: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_param_list: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
types:
  array_of__enum__talent_filter_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: enum__talent_filter_cond
        repeat: expr
        repeat-expr: length.value
