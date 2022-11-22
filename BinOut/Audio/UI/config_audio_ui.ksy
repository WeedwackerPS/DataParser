meta:
  id: config_audio_ui
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../Common/dict_of__aux_types__string_config_wwise_string
    - ../Common/dict_of__aux_types__vlq_base128_le_s_config_wwise_string
    - ../Common/audio_one_time_event
    - ../../../DictType/dict_of__aux_types__string_aux_types__string
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: support
    type: audio_ui_support
    if: has_field_support
  - id: equip
    type: audio_ui_equip
    if: has_field_equip
  - id: open_chest_event
    type: config_wwise_string
    if: has_field_open_chest_event
  - id: join_team_event
    type: audio_one_time_event
    if: has_field_join_team_event
  - id: element_state_key
    type: config_wwise_string
    if: has_field_element_state_key
  - id: element_state_default_value
    type: config_wwise_string
    if: has_field_element_state_default_value
  - id: element_state_value_map
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_element_state_value_map
  - id: character_appear_event
    type: config_wwise_string
    if: has_field_character_appear_event
  - id: add_map_pin_event
    type: config_wwise_string
    if: has_field_add_map_pin_event
  - id: remove_map_pin_event
    type: config_wwise_string
    if: has_field_remove_map_pin_event
  - id: enable_element_view_event
    type: config_wwise_string
    if: has_field_enable_element_view_event
  - id: disable_element_view_event
    type: config_wwise_string
    if: has_field_disable_element_view_event
  - id: dungeon_victory_event
    type: config_wwise_string
    if: has_field_dungeon_victory_event
  - id: dungeon_defeat_event
    type: config_wwise_string
    if: has_field_dungeon_defeat_event
  - id: change_weapon_event
    type: config_wwise_string
    if: has_field_change_weapon_event
  - id: wear_relic_event
    type: config_wwise_string
    if: has_field_wear_relic_event
  - id: takeoff_relic_event
    type: config_wwise_string
    if: has_field_takeoff_relic_event
  - id: select_avatar_relic_event
    type: config_wwise_string
    if: has_field_select_avatar_relic_event
  - id: add_equip_material_event
    type: config_wwise_string
    if: has_field_add_equip_material_event
  - id: talent_unlock_event
    type: config_wwise_string
    if: has_field_talent_unlock_event
  - id: change_avatar_success_event
    type: config_wwise_string
    if: has_field_change_avatar_success_event
  - id: change_avatar_failed_event
    type: config_wwise_string
    if: has_field_change_avatar_failed_event
  - id: select_main_quest_event
    type: config_wwise_string
    if: has_field_select_main_quest_event
  - id: team_avatar_hold_up
    type: config_wwise_string
    if: has_field_team_avatar_hold_up
  - id: team_avatar_hold_down
    type: config_wwise_string
    if: has_field_team_avatar_hold_down
  - id: team_avatar_click
    type: config_wwise_string
    if: has_field_team_avatar_click
  - id: bag_drop_item
    type: config_wwise_string
    if: has_field_bag_drop_item
  - id: mail_delete_event
    type: config_wwise_string
    if: has_field_mail_delete_event
  - id: item_in_cd_event
    type: config_wwise_string
    if: has_field_item_in_cd_event
  - id: pick_up_event
    type: config_wwise_string
    if: has_field_pick_up_event
  - id: player_level_btn_event
    type: config_wwise_string
    if: has_field_player_level_btn_event
  - id: chest_pickup_fail_event
    type: config_wwise_string
    if: has_field_chest_pickup_fail_event
  - id: enter_dungeon_success_event
    type: config_wwise_string
    if: has_field_enter_dungeon_success_event
  - id: open_page_default_event
    type: config_wwise_string
    if: has_field_open_page_default_event
  - id: close_page_default_event
    type: config_wwise_string
    if: has_field_close_page_default_event
  - id: open_page_custom_events
    type: dict_of__aux_types__string_config_wwise_string
    if: has_field_open_page_custom_events
  - id: close_page_custom_events
    type: dict_of__aux_types__string_config_wwise_string
    if: has_field_close_page_custom_events
  - id: video_start_default_event
    type: config_wwise_string
    if: has_field_video_start_default_event
  - id: video_end_default_event
    type: config_wwise_string
    if: has_field_video_end_default_event
  - id: video_start_custom_events
    type: dict_of__aux_types__string_config_wwise_string
    if: has_field_video_start_custom_events
  - id: video_end_custom_events
    type: dict_of__aux_types__string_config_wwise_string
    if: has_field_video_end_custom_events
  - id: default_enable_delay_count
    type: aux_types::vlq_base128_le_s
    if: has_field_default_enable_delay_count
  - id: character_select_music_end_event
    type: config_wwise_string
    if: has_field_character_select_music_end_event
  - id: loading_events_map
    type: dict_of__aux_types__vlq_base128_le_s_config_wwise_string
    if: has_field_loading_events_map
instances:
  has_field_support: # Field №0
    value: (bit_field.value & 0b00000000000000000000000000000000000000000001) != 0
  has_field_equip: # Field №1
    value: (bit_field.value & 0b00000000000000000000000000000000000000000010) != 0
  has_field_open_chest_event: # Field №2
    value: (bit_field.value & 0b00000000000000000000000000000000000000000100) != 0
  has_field_join_team_event: # Field №3
    value: (bit_field.value & 0b00000000000000000000000000000000000000001000) != 0
  has_field_element_state_key: # Field №4
    value: (bit_field.value & 0b00000000000000000000000000000000000000010000) != 0
  has_field_element_state_default_value: # Field №5
    value: (bit_field.value & 0b00000000000000000000000000000000000000100000) != 0
  has_field_element_state_value_map: # Field №6
    value: (bit_field.value & 0b00000000000000000000000000000000000001000000) != 0
  has_field_character_appear_event: # Field №7
    value: (bit_field.value & 0b00000000000000000000000000000000000010000000) != 0
  has_field_add_map_pin_event: # Field №8
    value: (bit_field.value & 0b00000000000000000000000000000000000100000000) != 0
  has_field_remove_map_pin_event: # Field №9
    value: (bit_field.value & 0b00000000000000000000000000000000001000000000) != 0
  has_field_enable_element_view_event: # Field №10
    value: (bit_field.value & 0b00000000000000000000000000000000010000000000) != 0
  has_field_disable_element_view_event: # Field №11
    value: (bit_field.value & 0b00000000000000000000000000000000100000000000) != 0
  has_field_dungeon_victory_event: # Field №12
    value: (bit_field.value & 0b00000000000000000000000000000001000000000000) != 0
  has_field_dungeon_defeat_event: # Field №13
    value: (bit_field.value & 0b00000000000000000000000000000010000000000000) != 0
  has_field_change_weapon_event: # Field №14
    value: (bit_field.value & 0b00000000000000000000000000000100000000000000) != 0
  has_field_wear_relic_event: # Field №15
    value: (bit_field.value & 0b00000000000000000000000000001000000000000000) != 0
  has_field_takeoff_relic_event: # Field №16
    value: (bit_field.value & 0b00000000000000000000000000010000000000000000) != 0
  has_field_select_avatar_relic_event: # Field №17
    value: (bit_field.value & 0b00000000000000000000000000100000000000000000) != 0
  has_field_add_equip_material_event: # Field №18
    value: (bit_field.value & 0b00000000000000000000000001000000000000000000) != 0
  has_field_talent_unlock_event: # Field №19
    value: (bit_field.value & 0b00000000000000000000000010000000000000000000) != 0
  has_field_change_avatar_success_event: # Field №20
    value: (bit_field.value & 0b00000000000000000000000100000000000000000000) != 0
  has_field_change_avatar_failed_event: # Field №21
    value: (bit_field.value & 0b00000000000000000000001000000000000000000000) != 0
  has_field_select_main_quest_event: # Field №22
    value: (bit_field.value & 0b00000000000000000000010000000000000000000000) != 0
  has_field_team_avatar_hold_up: # Field №23
    value: (bit_field.value & 0b00000000000000000000100000000000000000000000) != 0
  has_field_team_avatar_hold_down: # Field №24
    value: (bit_field.value & 0b00000000000000000001000000000000000000000000) != 0
  has_field_team_avatar_click: # Field №25
    value: (bit_field.value & 0b00000000000000000010000000000000000000000000) != 0
  has_field_bag_drop_item: # Field №26
    value: (bit_field.value & 0b00000000000000000100000000000000000000000000) != 0
  has_field_mail_delete_event: # Field №27
    value: (bit_field.value & 0b00000000000000001000000000000000000000000000) != 0
  has_field_item_in_cd_event: # Field №28
    value: (bit_field.value & 0b00000000000000010000000000000000000000000000) != 0
  has_field_pick_up_event: # Field №29
    value: (bit_field.value & 0b00000000000000100000000000000000000000000000) != 0
  has_field_player_level_btn_event: # Field №30
    value: (bit_field.value & 0b00000000000001000000000000000000000000000000) != 0
  has_field_chest_pickup_fail_event: # Field №31
    value: (bit_field.value & 0b00000000000010000000000000000000000000000000) != 0
  has_field_enter_dungeon_success_event: # Field №32
    value: (bit_field.value & 0b00000000000100000000000000000000000000000000) != 0
  has_field_open_page_default_event: # Field №33
    value: (bit_field.value & 0b00000000001000000000000000000000000000000000) != 0
  has_field_close_page_default_event: # Field №34
    value: (bit_field.value & 0b00000000010000000000000000000000000000000000) != 0
  has_field_open_page_custom_events: # Field №35
    value: (bit_field.value & 0b00000000100000000000000000000000000000000000) != 0
  has_field_close_page_custom_events: # Field №36
    value: (bit_field.value & 0b00000001000000000000000000000000000000000000) != 0
  has_field_video_start_default_event: # Field №37
    value: (bit_field.value & 0b00000010000000000000000000000000000000000000) != 0
  has_field_video_end_default_event: # Field №38
    value: (bit_field.value & 0b00000100000000000000000000000000000000000000) != 0
  has_field_video_start_custom_events: # Field №39
    value: (bit_field.value & 0b00001000000000000000000000000000000000000000) != 0
  has_field_video_end_custom_events: # Field №40
    value: (bit_field.value & 0b00010000000000000000000000000000000000000000) != 0
  has_field_default_enable_delay_count: # Field №41
    value: (bit_field.value & 0b00100000000000000000000000000000000000000000) != 0
  has_field_character_select_music_end_event: # Field №42
    value: (bit_field.value & 0b01000000000000000000000000000000000000000000) != 0
  has_field_loading_events_map: # Field №43
    value: (bit_field.value & 0b10000000000000000000000000000000000000000000) != 0
types:
  audio_ui_support:
    seq:
      - id: bit_field
        type: u1
      - id: combo_rtpc_key
        type: config_wwise_string
        if: has_field_combo_rtpc_key
      - id: countdown
        type: f4
        if: has_field_countdown
    instances:
      has_field_combo_rtpc_key: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_countdown: # Field №1
        value: (bit_field & 0b10) != 0
  audio_ui_equip:
    seq:
      - id: bit_field
        type: u1
      - id: equip_on_event
        type: config_wwise_string
        if: has_field_equip_on_event
    instances:
      has_field_equip_on_event: # Field №0
        value: (bit_field & 0b1) != 0
