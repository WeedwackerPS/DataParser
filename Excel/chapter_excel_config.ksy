meta:
  id: chapter_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: begin_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_begin_quest_id
  - id: end_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_end_quest_id
  - id: need_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_need_player_level
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: need_begin_time_str
    type: aux_types::string
    if: has_field_need_begin_time_str
  - id: chapter_num
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_num
  - id: chapter_title
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_title
  - id: chapter_icon
    type: aux_types::string
    if: has_field_chapter_icon
  - id: chapter_image_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_image_hash
  - id: chapter_image_hash_pre
    type: s1
    if: has_field_chapter_image_hash
  - id: chapter_image_title
    type: aux_types::vlq_base128_le_u
    if: has_field_chapter_image_title
  - id: in_activity_need_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_in_activity_need_player_level
  - id: chapter_serial_number_icon
    type: aux_types::string
    if: has_field_chapter_serial_number_icon
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_begin_quest_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_end_quest_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_need_player_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_activity_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_need_begin_time_str: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_chapter_num: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_chapter_title: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_chapter_icon: # Field №8
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000001) != 0)
  has_field_chapter_image_hash: # Field №9
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000010) != 0)
  has_field_chapter_image_title: # Field №10
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000100) != 0)
  has_field_in_activity_need_player_level: # Field №11
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00001000) != 0)
  has_field_chapter_serial_number_icon: # Field №12
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00010000) != 0)
