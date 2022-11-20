meta:
  id: giving_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__bag_tab
    - ../EnumType/enum__giving_method
    - Common/array_of__id_count_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: talk_id
    type: aux_types::vlq_base128_le_u
    if: has_field_talk_id
  - id: mistake_talk_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mistake_talk_id
  - id: tab
    type: enum__bag_tab
    if: has_field_tab
  - id: is_repeatable
    type: u1
    if: has_field_is_repeatable
  - id: giving_method
    type: enum__giving_method
    if: has_field_giving_method
  - id: exact_items
    type: array_of__id_count_config__length_s
    if: has_field_exact_items
  - id: exact_finish_talk_id
    type: aux_types::vlq_base128_le_u
    if: has_field_exact_finish_talk_id
  - id: giving_group_ids
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_giving_group_ids
  - id: giving_group_count
    type: aux_types::vlq_base128_le_u
    if: has_field_giving_group_count
  - id: highlight
    type: u1
    if: has_field_highlight
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: is_remove_item
    type: u1
    if: has_field_is_remove_item
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_talk_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_mistake_talk_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_tab: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_repeatable: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_giving_method: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_exact_items: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_exact_finish_talk_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_giving_group_ids: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_giving_group_count: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_highlight: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_icon: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_is_remove_item: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
