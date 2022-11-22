types:
  config_ai_beta:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: enable
        type: u1
        if: has_field_enable
      - id: friendliness
        type: aux_types::vlq_base128_le_s
        if: has_field_friendliness
      - id: decision_archetype
        type: enum__decision_archetype
        if: has_field_decision_archetype
      - id: move_setting
        type: config_ai_move
        if: has_field_move_setting
      - id: precombat
        type: config_ai_precombat_setting
        if: has_field_precombat
      - id: ai_combat
        type: config_ai_combat_setting
        if: has_field_ai_combat
      - id: buddy_setting
        type: config_ai_buddy_setting
        if: has_field_buddy_setting
      - id: sensing
        type: config_ai_sensing
        if: has_field_sensing
      - id: neurons
        type: dict_of__aux_types__string_array_of__enum__neuron_name__length_u
        if: has_field_neurons
      - id: threat
        type: config_ai_threat_setting
        if: has_field_threat
      - id: order
        type: config_ai_order_setting
        if: has_field_order
      - id: defend_area
        type: config_ai_defend_area
        if: has_field_defend_area
      - id: fly
        type: config_ai_fly_setting
        if: has_field_fly
      - id: pose_control
        type: config_ai_pose_control
        if: has_field_pose_control
      - id: ui
        type: config_aiui_setting
        if: has_field_ui
      - id: profiling
        type: config_ai_profiling_setting
        if: has_field_profiling
      - id: network
        type: config_ai_network_setting
        if: has_field_network
      - id: skill_group_cd_configs
        type: array_of__config_ai_skill_group_cd__length_u
        if: has_field_skill_group_cd_configs
      - id: skill_setting
        type: config_ai_skill_setting
        if: has_field_skill_setting
      - id: skills
        type: dict_of__aux_types__string_config_ai_skill
        if: has_field_skills
      - id: skill_gcd
        type: f4
        if: has_field_skill_gcd
      - id: target
        type: config_ai_target
        if: has_field_target
      - id: return_to_born_tactic
        type: config_ai_return_to_born_pos_setting
        if: has_field_return_to_born_tactic
      - id: wander_tactic
        type: config_ai_wander_setting
        if: has_field_wander_tactic
      - id: follow_scripted_path_tactic
        type: config_ai_follow_scripted_path_setting
        if: has_field_follow_scripted_path_tactic
      - id: follow_server_route_tactic
        type: config_ai_follow_server_route_setting
        if: has_field_follow_server_route_tactic
      - id: investigate_tactic
        type: config_ai_investigate_setting
        if: has_field_investigate_tactic
      - id: react_action_point_tactic
        type: config_ai_react_action_point_setting
        if: has_field_react_action_point_tactic
      - id: patrol_follow_tactic
        type: config_ai_patrol_follow_setting
        if: has_field_patrol_follow_tactic
      - id: combat_follow_move_tactic
        type: config_ai_combat_follow_move_setting
        if: has_field_combat_follow_move_tactic
      - id: melee_charge_tactic
        type: config_ai_melee_charge_setting
        if: has_field_melee_charge_tactic
      - id: facing_move_tactic
        type: config_ai_facing_move_setting
        if: has_field_facing_move_tactic
      - id: surround_tactic
        type: config_ai_surround_setting
        if: has_field_surround_tactic
      - id: group_surround_tactic
        type: config_ai_group_surround_setting
        if: has_field_group_surround_tactic
      - id: find_back_tactic
        type: config_ai_find_back_setting
        if: has_field_find_back_tactic
      - id: combat_fixed_move_tactic
        type: config_ai_combat_fixed_move_setting
        if: has_field_combat_fixed_move_tactic
      - id: crab_move_tactic
        type: config_ai_crab_move_setting
        if: has_field_crab_move_tactic
      - id: flee_tactic
        type: config_ai_flee_setting
        if: has_field_flee_tactic
      - id: flee_on_block_avatar_landing_tactic
        type: config_ai_flee_on_block_avatar_landing_setting
        if: has_field_flee_on_block_avatar_landing_tactic
      - id: spacial_chase_tactic
        type: config_ai_spacial_chase_setting
        if: has_field_spacial_chase_tactic
      - id: spacial_probe_tactic
        type: config_ai_spacial_probe_setting
        if: has_field_spacial_probe_tactic
      - id: spacial_adjust_tactic
        type: config_ai_spacial_adjust_setting
        if: has_field_spacial_adjust_tactic
      - id: bird_circling_tactic
        type: config_ai_bird_circling_setting
        if: has_field_bird_circling_tactic
      - id: scripted_move_to_tactic
        type: config_ai_scripted_move_to_setting
        if: has_field_scripted_move_to_tactic
      - id: landing_tactic
        type: config_ai_landing_setting
        if: has_field_landing_tactic
      - id: extraction_tactic
        type: config_ai_extraction_setting
        if: has_field_extraction_tactic
      - id: brownian_motion_tactic
        type: config_ai_brownian_motion_setting
        if: has_field_brownian_motion_tactic
      - id: spacial_facing_move_tactic
        type: config_ai_spacial_facing_move_setting
        if: has_field_spacial_facing_move_tactic
      - id: mixin
        type: config_ai_mixin_setting
        if: has_field_mixin
      - id: fishing_bites_bait_tactic
        type: config_ai_fishing_bites_bait_setting
        if: has_field_fishing_bites_bait_tactic
      - id: fishing_pretend_bites_tactic
        type: config_ai_fishing_pretend_bites_setting
        if: has_field_fishing_pretend_bites_tactic
      - id: fishing_flee_tactic
        type: config_ai_fishing_flee_setting
        if: has_field_fishing_flee_tactic
    instances:
      has_field_enable: # Field №0
        value: (bit_field.value & 000000000000000000000000000000000000000000001) != 0
      has_field_friendliness: # Field №1
        value: (bit_field.value & 000000000000000000000000000000000000000000010) != 0
      has_field_decision_archetype: # Field №2
        value: (bit_field.value & 000000000000000000000000000000000000000000100) != 0
      has_field_move_setting: # Field №3
        value: (bit_field.value & 000000000000000000000000000000000000000001000) != 0
      has_field_precombat: # Field №4
        value: (bit_field.value & 000000000000000000000000000000000000000010000) != 0
      has_field_ai_combat: # Field №5
        value: (bit_field.value & 000000000000000000000000000000000000000100000) != 0
      has_field_buddy_setting: # Field №6
        value: (bit_field.value & 000000000000000000000000000000000000001000000) != 0
      has_field_sensing: # Field №7
        value: (bit_field.value & 000000000000000000000000000000000000010000000) != 0
      has_field_neurons: # Field №8
        value: (bit_field.value & 000000000000000000000000000000000000100000000) != 0
      has_field_threat: # Field №9
        value: (bit_field.value & 000000000000000000000000000000000001000000000) != 0
      has_field_order: # Field №10
        value: (bit_field.value & 000000000000000000000000000000000010000000000) != 0
      has_field_defend_area: # Field №11
        value: (bit_field.value & 000000000000000000000000000000000100000000000) != 0
      has_field_fly: # Field №12
        value: (bit_field.value & 000000000000000000000000000000001000000000000) != 0
      has_field_pose_control: # Field №13
        value: (bit_field.value & 000000000000000000000000000000010000000000000) != 0
      has_field_ui: # Field №14
        value: (bit_field.value & 000000000000000000000000000000100000000000000) != 0
      has_field_profiling: # Field №15
        value: (bit_field.value & 000000000000000000000000000001000000000000000) != 0
      has_field_network: # Field №16
        value: (bit_field.value & 000000000000000000000000000010000000000000000) != 0
      has_field_skill_group_cd_configs: # Field №17
        value: (bit_field.value & 000000000000000000000000000100000000000000000) != 0
      has_field_skill_setting: # Field №18
        value: (bit_field.value & 000000000000000000000000001000000000000000000) != 0
      has_field_skills: # Field №19
        value: (bit_field.value & 000000000000000000000000010000000000000000000) != 0
      has_field_skill_gcd: # Field №20
        value: (bit_field.value & 000000000000000000000000100000000000000000000) != 0
      has_field_target: # Field №21
        value: (bit_field.value & 000000000000000000000001000000000000000000000) != 0
      has_field_return_to_born_tactic: # Field №22
        value: (bit_field.value & 000000000000000000000010000000000000000000000) != 0
      has_field_wander_tactic: # Field №23
        value: (bit_field.value & 000000000000000000000100000000000000000000000) != 0
      has_field_follow_scripted_path_tactic: # Field №24
        value: (bit_field.value & 000000000000000000001000000000000000000000000) != 0
      has_field_follow_server_route_tactic: # Field №25
        value: (bit_field.value & 000000000000000000010000000000000000000000000) != 0
      has_field_investigate_tactic: # Field №26
        value: (bit_field.value & 000000000000000000100000000000000000000000000) != 0
      has_field_react_action_point_tactic: # Field №27
        value: (bit_field.value & 000000000000000001000000000000000000000000000) != 0
      has_field_patrol_follow_tactic: # Field №28
        value: (bit_field.value & 000000000000000010000000000000000000000000000) != 0
      has_field_combat_follow_move_tactic: # Field №29
        value: (bit_field.value & 000000000000000100000000000000000000000000000) != 0
      has_field_melee_charge_tactic: # Field №30
        value: (bit_field.value & 000000000000001000000000000000000000000000000) != 0
      has_field_facing_move_tactic: # Field №31
        value: (bit_field.value & 000000000000010000000000000000000000000000000) != 0
      has_field_surround_tactic: # Field №32
        value: (bit_field.value & 000000000000100000000000000000000000000000000) != 0
      has_field_group_surround_tactic: # Field №33
        value: (bit_field.value & 000000000001000000000000000000000000000000000) != 0
      has_field_find_back_tactic: # Field №34
        value: (bit_field.value & 000000000010000000000000000000000000000000000) != 0
      has_field_combat_fixed_move_tactic: # Field №35
        value: (bit_field.value & 000000000100000000000000000000000000000000000) != 0
      has_field_crab_move_tactic: # Field №36
        value: (bit_field.value & 000000001000000000000000000000000000000000000) != 0
      has_field_flee_tactic: # Field №37
        value: (bit_field.value & 000000010000000000000000000000000000000000000) != 0
      has_field_flee_on_block_avatar_landing_tactic: # Field №38
        value: (bit_field.value & 000000100000000000000000000000000000000000000) != 0
      has_field_spacial_chase_tactic: # Field №39
        value: (bit_field.value & 000001000000000000000000000000000000000000000) != 0
      has_field_spacial_probe_tactic: # Field №40
        value: (bit_field.value & 000010000000000000000000000000000000000000000) != 0
      has_field_spacial_adjust_tactic: # Field №41
        value: (bit_field.value & 000100000000000000000000000000000000000000000) != 0
      has_field_bird_circling_tactic: # Field №42
        value: (bit_field.value & 001000000000000000000000000000000000000000000) != 0
      has_field_scripted_move_to_tactic: # Field №43
        value: (bit_field.value & 010000000000000000000000000000000000000000000) != 0
      has_field_landing_tactic: # Field №44
        value: (bit_field.value & 0b0000000100000000000000000000000000000000000000000000) != 0
      has_field_extraction_tactic: # Field №45
        value: (bit_field.value & 0b0000001000000000000000000000000000000000000000000000) != 0
      has_field_brownian_motion_tactic: # Field №46
        value: (bit_field.value & 0b0000010000000000000000000000000000000000000000000000) != 0
      has_field_spacial_facing_move_tactic: # Field №47
        value: (bit_field.value & 0b0000100000000000000000000000000000000000000000000000) != 0
      has_field_mixin: # Field №48
        value: (bit_field.value & 0b0001000000000000000000000000000000000000000000000000) != 0
      has_field_fishing_bites_bait_tactic: # Field №49
        value: (bit_field.value & 0b0010000000000000000000000000000000000000000000000000) != 0
      has_field_fishing_pretend_bites_tactic: # Field №50
        value: (bit_field.value & 0b0100000000000000000000000000000000000000000000000000) != 0
      has_field_fishing_flee_tactic: # Field №51
        value: (bit_field.value & 0b1000000000000000000000000000000000000000000000000000) != 0
