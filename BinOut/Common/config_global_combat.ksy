meta:
  id: config_global_combat
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__f4__length_u
    - ../../ArrayType/array_of__enum__element_type__length_u
    - ../../ArrayType/array_of__enum__element_reaction_type__length_u
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../DictType/dict_of__aux_types__string_f4
    - ../../DictType/dict_of__aux_types__string_dict_of__aux_types__string_f4
    - ../../DictType/dict_of__aux_types__vlq_base128_le_s_f4
    - ../../EnumType/enum__ability_state
    - ../../EnumType/enum__element_type
    - ../../EnumType/enum__equip_entity_type
    - array_of__vector__length_u
    - config_td_play
    - config_global_hit
    - config_global_ai
    - config_global_shake_off
    - config_global_miscs
    - config_default_abilities
    - config_elite_shield
    - config_global_switch
    - config_avatar_hit_bucket_setting
    - config_fire_grass_airflow_field
    - config_element_ui
    - config_element_shield
    - config_slice_frame_watch
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: hit_data
    type: config_global_hit
    if: has_field_hit_data
  - id: collision_data
    type: config_global_collision
    if: has_field_collision_data
  - id: ai_data
    type: config_global_ai
    if: has_field_ai_data
  - id: move_data
    type: config_global_move
    if: has_field_move_data
  - id: default_avatar_hit_bucket_setting
    type: config_avatar_hit_bucket_setting
    if: has_field_default_avatar_hit_bucket_setting
  - id: element_blade_data
    type: dict_of__aux_types__string_config_blade_element_fx
    if: has_field_element_blade_data
  - id: fire_grass_airflow_data
    type: config_fire_grass_airflow_field
    if: has_field_fire_grass_airflow_data
  - id: miscs
    type: config_global_miscs
    if: has_field_miscs
  - id: default_abilities
    type: config_default_abilities
    if: has_field_default_abilities
  - id: elem_react_damage
    type: dict_of__aux_types__string_dict_of__aux_types__string_f4
    if: has_field_elem_react_damage
  - id: elem_amplify_damage
    type: dict_of__aux_types__string_dict_of__aux_types__string_f4
    if: has_field_elem_amplify_damage
  - id: elem_prority
    type: array_of__enum__element_type__length_u
    if: has_field_elem_prority
  - id: shake_off
    type: config_global_shake_off
    if: has_field_shake_off
  - id: element_shield
    type: config_element_shield
    if: has_field_element_shield
  - id: elite_shield
    type: config_elite_shield
    if: has_field_elite_shield
  - id: global_switch
    type: config_global_switch
    if: has_field_global_switch
  - id: lock_target
    type: config_global_lock_target
    if: has_field_lock_target
  - id: elem_ui
    type: config_element_ui
    if: has_field_elem_ui
  - id: reject_element_reaction
    type: dict_of__enum__ability_state_array_of__enum__element_reaction_type__length_u
    if: has_field_reject_element_reaction
  - id: log_setting
    type: config_log_setting
    if: has_field_log_setting
  - id: attack_attenuation
    type: dict_of__aux_types__string_config_attack_attenuation
    if: has_field_attack_attenuation
  - id: gadget_creation_limits
    type: array_of__config_gadget_creation_limit__length_u
    if: has_field_gadget_creation_limits
  - id: lua_safety_switch
    type: config_lua_safety_check_switch
    if: has_field_lua_safety_switch
  - id: temp_component_budget
    type: dict_of__aux_types__vlq_base128_le_s_f4
    if: has_field_temp_component_budget
  - id: global_interaction
    type: config_global_interaction
    if: has_field_global_interaction
  - id: lamp_offset
    type: array_of__vector__length_u
    if: has_field_lamp_offset
  - id: ability_state_trigger_abilities
    type: dict_of__enum__ability_state_aux_types__string
    if: has_field_ability_state_trigger_abilities
  - id: dither
    type: config_global_dither
    if: has_field_dither
  - id: element_decrate_group
    type: dict_of__aux_types__string_array_of__config_element_decrate__length_u
    if: has_field_element_decrate_group
  - id: slice_frame_watch
    type: config_slice_frame_watch
    if: has_field_slice_frame_watch
  - id: ik
    type: config_ik
    if: has_field_ik
  - id: avatar_equip_size_datas
    type: dict_of__aux_types__vlq_base128_le_s_array_of__equip_size_data__length_u
    if: has_field_avatar_equip_size_datas
  - id: manekin_equip_size_datas
    type: dict_of__aux_types__vlq_base128_le_s_array_of__equip_size_data__length_u
    if: has_field_manekin_equip_size_datas
  - id: big_world_environment_damage_clamp
    type: config_big_world_environment_damage_clamp
    if: has_field_big_world_environment_damage_clamp
  - id: td_play
    type: config_td_play
    if: has_field_td_play
  - id: game_anim_safe_type
    type: config_safe_type_report_data
    if: has_field_game_anim_safe_type
  - id: element_convert_to_charge_bar_value_mixin_item_group
    type: dict_of__aux_types__string_array_of__element_convert_to_charge_bar_value_mixin_item__length_u
    if: has_field_element_convert_to_charge_bar_value_mixin_item_group
  - id: charge_bar_mixin_global_value_key
    type: aux_types::string
    if: has_field_charge_bar_mixin_global_value_key
instances:
  has_field_hit_data: # Field №0
    value: (bit_field.value & 0b00000000000000000000000000000000000001) != 0
  has_field_collision_data: # Field №1
    value: (bit_field.value & 0b00000000000000000000000000000000000010) != 0
  has_field_ai_data: # Field №2
    value: (bit_field.value & 0b00000000000000000000000000000000000100) != 0
  has_field_move_data: # Field №3
    value: (bit_field.value & 0b00000000000000000000000000000000001000) != 0
  has_field_default_avatar_hit_bucket_setting: # Field №4
    value: (bit_field.value & 0b00000000000000000000000000000000010000) != 0
  has_field_element_blade_data: # Field №5
    value: (bit_field.value & 0b00000000000000000000000000000000100000) != 0
  has_field_fire_grass_airflow_data: # Field №6
    value: (bit_field.value & 0b00000000000000000000000000000001000000) != 0
  has_field_miscs: # Field №7
    value: (bit_field.value & 0b00000000000000000000000000000010000000) != 0
  has_field_default_abilities: # Field №8
    value: (bit_field.value & 0b00000000000000000000000000000100000000) != 0
  has_field_elem_react_damage: # Field №9
    value: (bit_field.value & 0b00000000000000000000000000001000000000) != 0
  has_field_elem_amplify_damage: # Field №10
    value: (bit_field.value & 0b00000000000000000000000000010000000000) != 0
  has_field_elem_prority: # Field №11
    value: (bit_field.value & 0b00000000000000000000000000100000000000) != 0
  has_field_shake_off: # Field №12
    value: (bit_field.value & 0b00000000000000000000000001000000000000) != 0
  has_field_element_shield: # Field №13
    value: (bit_field.value & 0b00000000000000000000000010000000000000) != 0
  has_field_elite_shield: # Field №14
    value: (bit_field.value & 0b00000000000000000000000100000000000000) != 0
  has_field_global_switch: # Field №15
    value: (bit_field.value & 0b00000000000000000000001000000000000000) != 0
  has_field_lock_target: # Field №16
    value: (bit_field.value & 0b00000000000000000000010000000000000000) != 0
  has_field_elem_ui: # Field №17
    value: (bit_field.value & 0b00000000000000000000100000000000000000) != 0
  has_field_reject_element_reaction: # Field №18
    value: (bit_field.value & 0b00000000000000000001000000000000000000) != 0
  has_field_log_setting: # Field №19
    value: (bit_field.value & 0b00000000000000000010000000000000000000) != 0
  has_field_attack_attenuation: # Field №20
    value: (bit_field.value & 0b00000000000000000100000000000000000000) != 0
  has_field_gadget_creation_limits: # Field №21
    value: (bit_field.value & 0b00000000000000001000000000000000000000) != 0
  has_field_lua_safety_switch: # Field №22
    value: (bit_field.value & 0b00000000000000010000000000000000000000) != 0
  has_field_temp_component_budget: # Field №23
    value: (bit_field.value & 0b00000000000000100000000000000000000000) != 0
  has_field_global_interaction: # Field №24
    value: (bit_field.value & 0b00000000000001000000000000000000000000) != 0
  has_field_lamp_offset: # Field №25
    value: (bit_field.value & 0b00000000000010000000000000000000000000) != 0
  has_field_ability_state_trigger_abilities: # Field №26
    value: (bit_field.value & 0b00000000000100000000000000000000000000) != 0
  has_field_dither: # Field №27
    value: (bit_field.value & 0b00000000001000000000000000000000000000) != 0
  has_field_element_decrate_group: # Field №28
    value: (bit_field.value & 0b00000000010000000000000000000000000000) != 0
  has_field_slice_frame_watch: # Field №29
    value: (bit_field.value & 0b00000000100000000000000000000000000000) != 0
  has_field_ik: # Field №30
    value: (bit_field.value & 0b00000001000000000000000000000000000000) != 0
  has_field_avatar_equip_size_datas: # Field №31
    value: (bit_field.value & 0b00000010000000000000000000000000000000) != 0
  has_field_manekin_equip_size_datas: # Field №32
    value: (bit_field.value & 0b00000100000000000000000000000000000000) != 0
  has_field_big_world_environment_damage_clamp: # Field №33
    value: (bit_field.value & 0b00001000000000000000000000000000000000) != 0
  has_field_td_play: # Field №34
    value: (bit_field.value & 0b00010000000000000000000000000000000000) != 0
  has_field_game_anim_safe_type: # Field №35
    value: (bit_field.value & 0b00100000000000000000000000000000000000) != 0
  has_field_element_convert_to_charge_bar_value_mixin_item_group: # Field №36
    value: (bit_field.value & 0b01000000000000000000000000000000000000) != 0
  has_field_charge_bar_mixin_global_value_key: # Field №37
    value: (bit_field.value & 0b10000000000000000000000000000000000000) != 0
types:
  config_global_collision:
    seq:
      - id: bit_field
        type: u1
      - id: high_spd_threshold
        type: f4
        if: has_field_high_spd_threshold
    instances:
      has_field_high_spd_threshold: # Field №0
        value: (bit_field & 0b1) != 0
  config_global_move:
    seq:
      - id: bit_field
        type: u1
      - id: sync_interval
        type: config_move_sync_interval
        if: has_field_sync_interval
      - id: no_ground_stay_in_place
        type: u1
        if: has_field_no_ground_stay_in_place
    instances:
      has_field_sync_interval: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_no_ground_stay_in_place: # Field №1
        value: (bit_field & 0b10) != 0
  config_move_sync_interval:
    seq:
      - id: bit_field
        type: u1
      - id: lod0
        type: config_specific_float_value
        if: has_field_lod0
      - id: lod1
        type: config_specific_float_value
        if: has_field_lod1
      - id: lod2
        type: config_specific_float_value
        if: has_field_lod2
    instances:
      has_field_lod0: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_lod1: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_lod2: # Field №2
        value: (bit_field & 0b100) != 0
  config_specific_float_value:
    seq:
      - id: bit_field
        type: u1
      - id: default_value
        type: f4
        if: has_field_default_value
      - id: specific_value
        type: dict_of__aux_types__string_f4
        if: has_field_specific_value
    instances:
      has_field_default_value: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_specific_value: # Field №1
        value: (bit_field & 0b10) != 0
  dict_of__aux_types__string_config_blade_element_fx:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_blade_element_fx
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_blade_element_fx:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_blade_element_fx
  config_blade_element_fx:
    seq:
      - id: bit_field
        type: u1
      - id: slash
        type: aux_types::string
        if: has_field_slash
      - id: color_a
        type: aux_types::string
        if: has_field_color_a
      - id: color_b
        type: aux_types::string
        if: has_field_color_b
    instances:
      has_field_slash: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_color_a: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_color_b: # Field №2
        value: (bit_field & 0b100) != 0
  config_global_lock_target:
    seq:
      - id: bit_field
        type: u1
      - id: lock_weight_out_camera_param
        type: f4
        if: has_field_lock_weight_out_camera_param
      - id: lock_weight_relock_param
        type: f4
        if: has_field_lock_weight_relock_param
      - id: clear_lock_target_out_combat
        type: f4
        if: has_field_clear_lock_target_out_combat
      - id: clear_lock_target_in_combat
        type: f4
        if: has_field_clear_lock_target_in_combat
      - id: force_lock_target_in_combat
        type: f4
        if: has_field_force_lock_target_in_combat
    instances:
      has_field_lock_weight_out_camera_param: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_lock_weight_relock_param: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_clear_lock_target_out_combat: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_clear_lock_target_in_combat: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_force_lock_target_in_combat: # Field №4
        value: (bit_field & 0b10000) != 0
  dict_of__enum__ability_state_array_of__enum__element_reaction_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__ability_state_array_of__enum__element_reaction_type__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__ability_state_array_of__enum__element_reaction_type__length_u:
    seq:
      - id: key
        type: enum__ability_state
      - id: value
        type: array_of__enum__element_reaction_type__length_u
  config_log_setting:
    seq:
      - id: bit_field
        type: u1
      - id: send_engine_log_to_server
        type: u1
        if: has_field_send_engine_log_to_server
    instances:
      has_field_send_engine_log_to_server: # Field №0
        value: (bit_field & 0b1) != 0
  dict_of__aux_types__string_config_attack_attenuation:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_attack_attenuation
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_attack_attenuation:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_attack_attenuation
  config_attack_attenuation:
    seq:
      - id: bit_field
        type: u1
      - id: reset_cycle
        type: f4
        if: has_field_reset_cycle
      - id: durability_sequence
        type: array_of__f4__length_u
        if: has_field_durability_sequence
      - id: enbreak_sequence
        type: array_of__f4__length_u
        if: has_field_enbreak_sequence
      - id: damage_sequence
        type: array_of__f4__length_u
        if: has_field_damage_sequence
    instances:
      has_field_reset_cycle: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_durability_sequence: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_enbreak_sequence: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_damage_sequence: # Field №3
        value: (bit_field & 0b1000) != 0
  array_of__config_gadget_creation_limit__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_gadget_creation_limit
        repeat: expr
        repeat-expr: length.value
  config_gadget_creation_limit:
    seq:
      - id: bit_field
        type: u1
      - id: tag
        type: aux_types::string
        if: has_field_tag
      - id: gadget_i_ds
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_gadget_i_ds
      - id: max_value
        type: aux_types::vlq_base128_le_u
        if: has_field_max_value
    instances:
      has_field_tag: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_gadget_i_ds: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_max_value: # Field №2
        value: (bit_field & 0b100) != 0
  config_lua_safety_check_switch:
    seq:
      - id: bit_field
        type: u1
      - id: tick_world
        type: u1
        if: has_field_tick_world
      - id: tick_world_cd
        type: aux_types::vlq_base128_le_u
        if: has_field_tick_world_cd
      - id: tick_chest
        type: u1
        if: has_field_tick_chest
      - id: tick_monster
        type: u1
        if: has_field_tick_monster
    instances:
      has_field_tick_world: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_tick_world_cd: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_tick_chest: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_tick_monster: # Field №3
        value: (bit_field & 0b1000) != 0
  config_global_interaction:
    seq:
      - id: bit_field
        type: u1
      - id: talk_enable_angle
        type: f4
        if: has_field_talk_enable_angle
      - id: head_ctrl_enable_angle
        type: f4
        if: has_field_head_ctrl_enable_angle
      - id: head_ctrl_disable_angle
        type: f4
        if: has_field_head_ctrl_disable_angle
    instances:
      has_field_talk_enable_angle: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_head_ctrl_enable_angle: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_head_ctrl_disable_angle: # Field №2
        value: (bit_field & 0b100) != 0
  dict_of__enum__ability_state_aux_types__string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__ability_state_aux_types__string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__ability_state_aux_types__string:
    seq:
      - id: key
        type: enum__ability_state
      - id: value
        type: aux_types::string
  config_global_dither:
    seq:
      - id: bit_field
        type: u1
      - id: dither_min_range
        type: f4
        if: has_field_dither_min_range
      - id: dither_max_range
        type: f4
        if: has_field_dither_max_range
      - id: default_detect_height
        type: f4
        if: has_field_default_detect_height
      - id: detect_height_check_step
        type: aux_types::vlq_base128_le_u
        if: has_field_detect_height_check_step
    instances:
      has_field_dither_min_range: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_dither_max_range: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_default_detect_height: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_detect_height_check_step: # Field №3
        value: (bit_field & 0b1000) != 0
  dict_of__aux_types__string_array_of__config_element_decrate__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_array_of__config_element_decrate__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_array_of__config_element_decrate__length_u:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: array_of__config_element_decrate__length_u
  array_of__config_element_decrate__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_element_decrate
        repeat: expr
        repeat-expr: length.value
  config_element_decrate:
    seq:
      - id: bit_field
        type: u1
      - id: elem1
        type: enum__element_type
        if: has_field_elem1
      - id: elem2
        type: enum__element_type
        if: has_field_elem2
      - id: ratio
        type: f4
        if: has_field_ratio
    instances:
      has_field_elem1: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_elem2: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_ratio: # Field №2
        value: (bit_field & 0b100) != 0
  config_ik:
    seq:
      - id: bit_field
        type: u1
      - id: remote_move_ik
        type: config_bool_for_platforms
        if: has_field_remote_move_ik
      - id: remote_climb_ik
        type: config_bool_for_platforms
        if: has_field_remote_climb_ik
    instances:
      has_field_remote_move_ik: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_remote_climb_ik: # Field №1
        value: (bit_field & 0b10) != 0
  config_bool_for_platforms:
    seq:
      - id: bit_field
        type: u1
      - id: ps4
        type: u1
        if: has_field_ps4
      - id: android
        type: u1
        if: has_field_android
      - id: ios
        type: u1
        if: has_field_ios
      - id: pc
        type: u1
        if: has_field_pc
      - id: editor
        type: u1
        if: has_field_editor
    instances:
      has_field_ps4: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_android: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_ios: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_pc: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_editor: # Field №4
        value: (bit_field & 0b10000) != 0
  dict_of__aux_types__vlq_base128_le_s_array_of__equip_size_data__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_array_of__equip_size_data__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_array_of__equip_size_data__length_u:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: array_of__equip_size_data__length_u
  array_of__equip_size_data__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: equip_size_data
        repeat: expr
        repeat-expr: length.value
  equip_size_data:
    seq:
      - id: bit_field
        type: u1
      - id: equip_type
        type: enum__equip_entity_type
        if: has_field_equip_type
      - id: put_away_size
        type: f4
        if: has_field_put_away_size
      - id: take_out_size
        type: f4
        if: has_field_take_out_size
    instances:
      has_field_equip_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_put_away_size: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_take_out_size: # Field №2
        value: (bit_field & 0b100) != 0
  config_big_world_environment_damage_clamp:
    seq:
      - id: bit_field
        type: u1
      - id: reduce_level
        type: aux_types::vlq_base128_le_s
        if: has_field_reduce_level
      - id: world_level_cut_threshhold
        type: aux_types::vlq_base128_le_s
        if: has_field_world_level_cut_threshhold
    instances:
      has_field_reduce_level: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_world_level_cut_threshhold: # Field №1
        value: (bit_field & 0b10) != 0
  config_safe_type_report_data:
    seq:
      - id: bit_field
        type: u1
      - id: max_count
        type: aux_types::vlq_base128_le_s
        if: has_field_max_count
    instances:
      has_field_max_count: # Field №0
        value: (bit_field & 0b1) != 0
  dict_of__aux_types__string_array_of__element_convert_to_charge_bar_value_mixin_item__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_array_of__element_convert_to_charge_bar_value_mixin_item__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_array_of__element_convert_to_charge_bar_value_mixin_item__length_u:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: array_of__element_convert_to_charge_bar_value_mixin_item__length_u
  array_of__element_convert_to_charge_bar_value_mixin_item__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: element_convert_to_charge_bar_value_mixin_item
        repeat: expr
        repeat-expr: length.value
  element_convert_to_charge_bar_value_mixin_item:
    seq:
      - id: bit_field
        type: u1
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: ratio
        type: f4
        if: has_field_ratio
    instances:
      has_field_element_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_ratio: # Field №1
        value: (bit_field & 0b10) != 0
