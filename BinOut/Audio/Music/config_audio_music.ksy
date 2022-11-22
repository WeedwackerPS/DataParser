meta:
  id: config_audio_music
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
    - ../../../EnumType/enum__config_ai_combat_phase
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: state_group_name
    type: config_wwise_string
    if: has_field_state_group_name
  - id: casual_state_value
    type: config_wwise_string
    if: has_field_casual_state_value
  - id: combat_prep_state_value
    type: config_wwise_string
    if: has_field_combat_prep_state_value
  - id: combat_state_value
    type: config_wwise_string
    if: has_field_combat_state_value
  - id: peace_state_value
    type: config_wwise_string
    if: has_field_peace_state_value
  - id: city_approach_trigger
    type: config_wwise_string
    if: has_field_city_approach_trigger
  - id: combat_trigger
    type: config_wwise_string
    if: has_field_combat_trigger
  - id: combat_music_rtpc
    type: config_wwise_string
    if: has_field_combat_music_rtpc
  - id: outer_enemy_concern_range
    type: f4
    if: has_field_outer_enemy_concern_range
  - id: inner_enemy_concern_range
    type: f4
    if: has_field_inner_enemy_concern_range
  - id: attack_from_behind_enter_distance
    type: f4
    if: has_field_attack_from_behind_enter_distance
  - id: attack_from_behind_exit_distance
    type: f4
    if: has_field_attack_from_behind_exit_distance
  - id: intention_in_front_product_threshold
    type: f4
    if: has_field_intention_in_front_product_threshold
  - id: intention_from_behind_product_threshold
    type: f4
    if: has_field_intention_from_behind_product_threshold
  - id: combat_rtpc_lower_bound
    type: f4
    if: has_field_combat_rtpc_lower_bound
  - id: combat_rtpc_upper_bound
    type: f4
    if: has_field_combat_rtpc_upper_bound
  - id: wait_frames_till_stage_mature
    type: aux_types::vlq_base128_le_s
    if: has_field_wait_frames_till_stage_mature
  - id: enemy_main_state_group
    type: config_wwise_string
    if: has_field_enemy_main_state_group
  - id: default_enemy_main_state_value
    type: config_wwise_string
    if: has_field_default_enemy_main_state_value
  - id: enemy_settings
    type: array_of__music_enemy_settings__length_u
    if: has_field_enemy_settings
  - id: skiff_state_op
    type: audio_state_op
    if: has_field_skiff_state_op
instances:
  has_field_state_group_name: # Field №0
    value: (bit_field.value & 0b000000000000000000001) != 0
  has_field_casual_state_value: # Field №1
    value: (bit_field.value & 0b000000000000000000010) != 0
  has_field_combat_prep_state_value: # Field №2
    value: (bit_field.value & 0b000000000000000000100) != 0
  has_field_combat_state_value: # Field №3
    value: (bit_field.value & 0b000000000000000001000) != 0
  has_field_peace_state_value: # Field №4
    value: (bit_field.value & 0b000000000000000010000) != 0
  has_field_city_approach_trigger: # Field №5
    value: (bit_field.value & 0b000000000000000100000) != 0
  has_field_combat_trigger: # Field №6
    value: (bit_field.value & 0b000000000000001000000) != 0
  has_field_combat_music_rtpc: # Field №7
    value: (bit_field.value & 0b000000000000010000000) != 0
  has_field_outer_enemy_concern_range: # Field №8
    value: (bit_field.value & 0b000000000000100000000) != 0
  has_field_inner_enemy_concern_range: # Field №9
    value: (bit_field.value & 0b000000000001000000000) != 0
  has_field_attack_from_behind_enter_distance: # Field №10
    value: (bit_field.value & 0b000000000010000000000) != 0
  has_field_attack_from_behind_exit_distance: # Field №11
    value: (bit_field.value & 0b000000000100000000000) != 0
  has_field_intention_in_front_product_threshold: # Field №12
    value: (bit_field.value & 0b000000001000000000000) != 0
  has_field_intention_from_behind_product_threshold: # Field №13
    value: (bit_field.value & 0b000000010000000000000) != 0
  has_field_combat_rtpc_lower_bound: # Field №14
    value: (bit_field.value & 0b000000100000000000000) != 0
  has_field_combat_rtpc_upper_bound: # Field №15
    value: (bit_field.value & 0b000001000000000000000) != 0
  has_field_wait_frames_till_stage_mature: # Field №16
    value: (bit_field.value & 0b000010000000000000000) != 0
  has_field_enemy_main_state_group: # Field №17
    value: (bit_field.value & 0b000100000000000000000) != 0
  has_field_default_enemy_main_state_value: # Field №18
    value: (bit_field.value & 0b001000000000000000000) != 0
  has_field_enemy_settings: # Field №19
    value: (bit_field.value & 0b010000000000000000000) != 0
  has_field_skiff_state_op: # Field №20
    value: (bit_field.value & 0b100000000000000000000) != 0
types:
  array_of__music_enemy_settings__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: music_enemy_settings
        repeat: expr
        repeat-expr: length.value
  music_enemy_settings:
    seq:
      - id: bit_field
        type: u1
      - id: entity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_entity_id
      - id: main_state_value
        type: config_wwise_string
        if: has_field_main_state_value
      - id: aux_state_group
        type: config_wwise_string
        if: has_field_aux_state_group
      - id: default_aux_state_value
        type: config_wwise_string
        if: has_field_default_aux_state_value
      - id: combat_phase_states
        type: array_of__music_enemy_combat_phase_state__length_u
        if: has_field_combat_phase_states
    instances:
      has_field_entity_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_main_state_value: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_aux_state_group: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_default_aux_state_value: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_combat_phase_states: # Field №4
        value: (bit_field & 0b10000) != 0
  array_of__music_enemy_combat_phase_state__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: music_enemy_combat_phase_state
        repeat: expr
        repeat-expr: length.value
  music_enemy_combat_phase_state:
    seq:
      - id: bit_field
        type: u1
      - id: combat_phase
        type: enum__config_ai_combat_phase
        if: has_field_combat_phase
      - id: state_value
        type: config_wwise_string
        if: has_field_state_value
    instances:
      has_field_combat_phase: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_state_value: # Field №1
        value: (bit_field & 0b10) != 0
