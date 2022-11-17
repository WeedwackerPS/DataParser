meta:
  id: home_world_npc_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__quality_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: furniture_id
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_id
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: npc_id
    type: aux_types::vlq_base128_le_u
    if: has_field_npc_id
  - id: talk_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_talk_i_ds
  - id: is_npc
    type: u1
    if: has_field_is_npc
  - id: head_icon
    type: aux_types::string
    if: has_field_head_icon
  - id: front_icon
    type: aux_types::string
    if: has_field_front_icon
  - id: side_icon
    type: aux_types::string
    if: has_field_side_icon
  - id: quality
    type: enum__quality_type
    if: has_field_quality
  - id: show_name
    type: aux_types::vlq_base128_le_u
    if: has_field_show_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
instances:
  has_field_furniture_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_avatar_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_npc_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_talk_i_ds: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_npc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_head_icon: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_front_icon: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_side_icon: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_quality: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_show_name: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_desc: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
