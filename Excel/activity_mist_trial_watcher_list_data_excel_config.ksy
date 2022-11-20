meta:
  id: activity_mist_trial_watcher_list_data_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__mist_trial_client_sync_type
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: challenge_watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_watcher_id
  - id: dungeon_show_content_type
    type: enum__mist_trial_client_sync_type
    if: has_field_dungeon_show_content_type
  - id: show_param
    type: array_of__aux_types__string__length_u
    if: has_field_show_param
  - id: progress_format
    type: aux_types::vlq_base128_le_u
    if: has_field_progress_format
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_schedule_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_challenge_watcher_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_dungeon_show_content_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_show_param: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_progress_format: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
