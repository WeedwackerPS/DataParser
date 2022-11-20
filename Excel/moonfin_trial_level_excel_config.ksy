meta:
  id: moonfin_trial_level_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__moonfin_trial_activity_level_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_level_id
  - id: level_type
    type: enum__moonfin_trial_activity_level_type
    if: has_field_level_type
  - id: specific_fish_id
    type: aux_types::vlq_base128_le_u
    if: has_field_specific_fish_id
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: challenge_id
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_id
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: watcher_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id
  - id: leading_level
    type: aux_types::vlq_base128_le_u
    if: has_field_leading_level
  - id: leading_main_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_leading_main_quest
  - id: main_quest
    type: aux_types::vlq_base128_le_u
    if: has_field_main_quest
  - id: mark_position
    type: array_of__f4__length_u
    if: has_field_mark_position
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
  - id: level_name
    type: aux_types::vlq_base128_le_u
    if: has_field_level_name
  - id: description
    type: aux_types::vlq_base128_le_u
    if: has_field_description
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
instances:
  has_field_level_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_specific_fish_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_gallery_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_challenge_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_open_day: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_watcher_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_leading_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_leading_main_quest: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_main_quest: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_mark_position: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_reward_preview_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_level_name: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_description: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_title: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
