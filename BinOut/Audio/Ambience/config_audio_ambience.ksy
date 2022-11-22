meta:
  id: config_audio_ambience
  endian: le
  license: GPLv2
  imports:
    - ../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../Common/array_of__vector__length_u
    - ../../Common/config_wwise_string
    - ../Common/array_of__audio_state_op__length_u
    - ../../../EnumType/enum__multi_position_type
seq:
  - id: bit_field
    type: u1
  - id: effective_scene_ids
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_effective_scene_ids
  - id: relative_positions
    type: array_of__vector__length_u
    if: has_field_relative_positions
  - id: positioned_events
    type: array_of__audio_ambience_positioned_event__length_u
    if: has_field_positioned_events
  - id: tree_info
    type: config_audio_tree_info
    if: has_field_tree_info
  - id: dynamic_ray_info
    type: config_audio_dynamic_ray_info
    if: has_field_dynamic_ray_info
  - id: area2d_info
    type: config_audio_area2d_info
    if: has_field_area2d_info
instances:
  has_field_effective_scene_ids: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_relative_positions: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_positioned_events: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_tree_info: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_dynamic_ray_info: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_area2d_info: # Field №5
    value: (bit_field & 0b100000) != 0
types:
  config_audio_tree_info:
    seq:
      - id: bit_field
        type: u1
      - id: detect_radius
        type: f4
        if: has_field_detect_radius
      - id: data_asset_folder
        type: aux_types::string
        if: has_field_data_asset_folder
      - id: tree_sound_event_name
        type: config_wwise_string
        if: has_field_tree_sound_event_name
      - id: tree_num_rtpc_name
        type: config_wwise_string
        if: has_field_tree_num_rtpc_name
      - id: multi_position_type
        type: enum__multi_position_type
        if: has_field_multi_position_type
      - id: data_asset_name_patterns
        type: array_of__audio_tree_data_asset_name_pattern__length_u
        if: has_field_data_asset_name_patterns
    instances:
      has_field_detect_radius: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_data_asset_folder: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_tree_sound_event_name: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_tree_num_rtpc_name: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_multi_position_type: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_data_asset_name_patterns: # Field №5
        value: (bit_field & 0b100000) != 0
  array_of__audio_tree_data_asset_name_pattern__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_tree_data_asset_name_pattern
        repeat: expr
        repeat-expr: length.value
  audio_tree_data_asset_name_pattern:
    seq:
      - id: bit_field
        type: u1
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: pattern
        type: aux_types::string
        if: has_field_pattern
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_pattern: # Field №1
        value: (bit_field & 0b10) != 0

  config_audio_dynamic_ray_info:
    seq:
      - id: bit_field
        type: u1
      - id: ray_per_frame
        type: aux_types::vlq_base128_le_s
        if: has_field_ray_per_frame
      - id: moving_lerp_ratio
        type: f4
        if: has_field_moving_lerp_ratio
      - id: stand_lerp_ratio
        type: f4
        if: has_field_stand_lerp_ratio
      - id: ray_max_distance
        type: f4
        if: has_field_ray_max_distance
      - id: is_debug
        type: u1
        if: has_field_is_debug
      - id: rtpc_param
        type: config_wwise_string
        if: has_field_rtpc_param
      - id: grass_count_rtpc
        type: config_wwise_string
        if: has_field_grass_count_rtpc
    instances:
      has_field_ray_per_frame: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_moving_lerp_ratio: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_stand_lerp_ratio: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_ray_max_distance: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_is_debug: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_rtpc_param: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_grass_count_rtpc: # Field №6
        value: (bit_field & 0b1000000) != 0
  config_audio_area2d_info:
    seq:
      - id: bit_field
        type: u1
      - id: leave_reverb_delay
        type: f4
        if: has_field_leave_reverb_delay
      - id: enter_reverb_states
        type: array_of__audio_state_op__length_u
        if: has_field_enter_reverb_states
      - id: leave_reverb_states
        type: array_of__audio_state_op__length_u
        if: has_field_leave_reverb_states
    instances:
      has_field_leave_reverb_delay: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_enter_reverb_states: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_leave_reverb_states: # Field №2
        value: (bit_field & 0b100) != 0
  array_of__audio_ambience_positioned_event__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_ambience_positioned_event
        repeat: expr
        repeat-expr: length.value
  audio_ambience_positioned_event:
    seq:
      - id: bit_field
        type: u1
      - id: event_name
        type: config_wwise_string
        if: has_field_event_name
      - id: min_init_delay
        type: f4
        if: has_field_min_init_delay
      - id: max_init_delay
        type: f4
        if: has_field_max_init_delay
      - id: min_interval
        type: f4
        if: has_field_min_interval
      - id: max_interval
        type: f4
        if: has_field_max_interval
    instances:
      has_field_event_name: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_min_init_delay: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_max_init_delay: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_min_interval: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_max_interval: # Field №4
        value: (bit_field & 0b10000) != 0
