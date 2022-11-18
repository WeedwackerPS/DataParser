meta:
  id: roguelike_card_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../ArrayType/array_of__f4__length_u
    - ../ArrayType/array_of__u1__length_u
    - ../EnumType/enum__roguelike_card_label
    - ../EnumType/enum__roguelike_card_type
    - Common/roguelike_effect_excel_config
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: sort_order
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_order
  - id: label
    type: enum__roguelike_card_label
    if: has_field_label
  - id: type
    type: enum__roguelike_card_type
    if: has_field_type
  - id: related_rune_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_related_rune_list
  - id: related_element_list
    type: array_of__aux_types__string__length_u
    if: has_field_related_element_list
  - id: effect_config
    type: roguelike_effect_excel_config
    if: has_field_effect_config
  - id: is_clear_at_next_level
    type: u1
    if: has_field_is_clear_at_next_level
  - id: is_dynamic_show
    type: u1
    if: has_field_is_dynamic_show
  - id: card_name
    type: aux_types::vlq_base128_le_u
    if: has_field_card_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: extra_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_extra_desc
  - id: desc_param_list
    type: array_of__f4__length_u
    if: has_field_desc_param_list
  - id: desc_param_superposition_list
    type: array_of__u1__length_u
    if: has_field_desc_param_superposition_list
  - id: jeooeboecbg
    type: array_of__f4__length_u
    if: has_field_jeooeboecbg
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_sort_order: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_label: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_related_rune_list: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_related_element_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_effect_config: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_clear_at_next_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_dynamic_show: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_card_name: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_desc: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_extra_desc: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_desc_param_list: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_desc_param_superposition_list: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_jeooeboecbg: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
