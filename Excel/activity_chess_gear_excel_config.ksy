meta:
  id: activity_chess_gear_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: gear_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_id
  - id: gear_name
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_name
  - id: gear_short_name
    type: aux_types::vlq_base128_le_u
    if: has_field_gear_short_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: gear_icon_path
    type: aux_types::string
    if: has_field_gear_icon_path
  - id: tag_icon_path
    type: aux_types::string
    if: has_field_tag_icon_path
  - id: attack
    type: aux_types::vlq_base128_le_s
    if: has_field_attack
  - id: mastery
    type: aux_types::vlq_base128_le_s
    if: has_field_mastery
  - id: attack_speed
    type: aux_types::vlq_base128_le_s
    if: has_field_attack_speed
  - id: attack_range
    type: aux_types::vlq_base128_le_s
    if: has_field_attack_range
  - id: build_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_build_cost
  - id: demolition_refund
    type: aux_types::vlq_base128_le_u
    if: has_field_demolition_refund
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: build_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_build_limit
  - id: ban_dungeon_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_ban_dungeon_list
  - id: is_enable_rotate
    type: u1
    if: has_field_is_enable_rotate
  - id: init_level
    type: aux_types::vlq_base128_le_u
    if: has_field_init_level
  - id: need_chess_level
    type: aux_types::vlq_base128_le_u
    if: has_field_need_chess_level
instances:
  has_field_gear_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gear_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_gear_short_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_gear_icon_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_tag_icon_path: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_attack: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_mastery: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_attack_speed: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_attack_range: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_build_cost: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_demolition_refund: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_gadget_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_build_limit: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_ban_dungeon_list: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_is_enable_rotate: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_init_level: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_need_chess_level: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
