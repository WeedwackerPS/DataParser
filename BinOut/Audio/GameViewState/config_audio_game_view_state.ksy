meta:
  id: config_audio_game_view_state
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: state_group_name
    type: config_wwise_string
    if: has_field_state_group_name
  - id: normal_state_value
    type: config_wwise_string
    if: has_field_normal_state_value
  - id: focused_state_value
    type: config_wwise_string
    if: has_field_focused_state_value
  - id: sneak_in_state_value
    type: config_wwise_string
    if: has_field_sneak_in_state_value
  - id: menu_state_value
    type: config_wwise_string
    if: has_field_menu_state_value
  - id: pause_menu_state_value
    type: config_wwise_string
    if: has_field_pause_menu_state_value
  - id: dialog_state_value
    type: config_wwise_string
    if: has_field_dialog_state_value
  - id: video_state_value
    type: config_wwise_string
    if: has_field_video_state_value
  - id: element_view_state_value
    type: config_wwise_string
    if: has_field_element_view_state_value
  - id: music_game_solo_state_value
    type: config_wwise_string
    if: has_field_music_game_solo_state_value
  - id: music_game_free_play_state_value
    type: config_wwise_string
    if: has_field_music_game_free_play_state_value
  - id: ui_page_ignore_list
    type: array_of__aux_types__string__length_u
    if: has_field_ui_page_ignore_list
instances:
  has_field_state_group_name: # Field №0
    value: (bit_field.value & 0b000000000001) != 0
  has_field_normal_state_value: # Field №1
    value: (bit_field.value & 0b000000000010) != 0
  has_field_focused_state_value: # Field №2
    value: (bit_field.value & 0b000000000100) != 0
  has_field_sneak_in_state_value: # Field №3
    value: (bit_field.value & 0b000000001000) != 0
  has_field_menu_state_value: # Field №4
    value: (bit_field.value & 0b000000010000) != 0
  has_field_pause_menu_state_value: # Field №5
    value: (bit_field.value & 0b000000100000) != 0
  has_field_dialog_state_value: # Field №6
    value: (bit_field.value & 0b000001000000) != 0
  has_field_video_state_value: # Field №7
    value: (bit_field.value & 0b000010000000) != 0
  has_field_element_view_state_value: # Field №8
    value: (bit_field.value & 0b000100000000) != 0
  has_field_music_game_solo_state_value: # Field №9
    value: (bit_field.value & 0b001000000000) != 0
  has_field_music_game_free_play_state_value: # Field №10
    value: (bit_field.value & 0b010000000000) != 0
  has_field_ui_page_ignore_list: # Field №11
    value: (bit_field.value & 0b100000000000) != 0
