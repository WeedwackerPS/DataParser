types:
  config_ai_skill:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: skill_type
        type: enum__config_ai_skill_type
        if: has_field_skill_type
      - id: combat_skill_type
        type: enum__config_ai_combat_skill_type
        if: has_field_combat_skill_type
      - id: priority
        type: aux_types::vlq_base128_le_s
        if: has_field_priority
      - id: need_line_of_sight
        type: u1
        if: has_field_need_line_of_sight
      - id: face_target
        type: u1
        if: has_field_face_target
      - id: can_use_if_target_inactive
        type: u1
        if: has_field_can_use_if_target_inactive
      - id: enable_skill_prepare
        type: u1
        if: has_field_enable_skill_prepare
      - id: skill_prepare_timeout
        type: f4
        if: has_field_skill_prepare_timeout
      - id: skill_prepare_speed_level
        type: aux_types::vlq_base128_le_s
        if: has_field_skill_prepare_speed_level
      - id: cast_condition
        type: config_ai_skill_cast_condition
        if: has_field_cast_condition
      - id: cd
        type: f4
        if: has_field_cd
      - id: cd_upper_range
        type: f4
        if: has_field_cd_upper_range
      - id: initial_cd
        type: f4
        if: has_field_initial_cd
      - id: initial_cd_upper_range
        type: f4
        if: has_field_initial_cd_upper_range
      - id: public_cd_group
        type: aux_types::string
        if: has_field_public_cd_group
      - id: ignore_gcd
        type: u1
        if: has_field_ignore_gcd
      - id: trigger_gcd
        type: u1
        if: has_field_trigger_gcd
      - id: trigger_cd_on_start
        type: u1
        if: has_field_trigger_cd_on_start
      - id: trigger_cd_on_fail
        type: u1
        if: has_field_trigger_cd_on_fail
      - id: skill_group_cdid
        type: aux_types::vlq_base128_le_s
        if: has_field_skill_group_cdid
      - id: state_i_ds
        type: array_of__aux_types__string__length_u
        if: has_field_state_i_ds
      - id: skill_querying_time
        type: f4
        if: has_field_skill_querying_time
      - id: command_id
        type: aux_types::vlq_base128_le_s
        if: has_field_command_id
      - id: flag_target_reachable
        type: aux_types::string
        if: has_field_flag_target_reachable
      - id: flag_self_on_template_collider
        type: aux_types::string
        if: has_field_flag_self_on_template_collider
      - id: flag_self_in_zone
        type: aux_types::string
        if: has_field_flag_self_in_zone
      - id: flag_target_in_zone
        type: aux_types::string
        if: has_field_flag_target_in_zone
      - id: buddy_skill_condition
        type: config_ai_buddy_skill_condition
        if: has_field_buddy_skill_condition
      - id: nerve_trigger
        type: array_of__enum__neuron_name__length_u
        if: has_field_nerve_trigger
    instances:
      has_field_name: # Field №0
        value: (bit_field.value & 00000000000000000000001) != 0
      has_field_skill_type: # Field №1
        value: (bit_field.value & 00000000000000000000010) != 0
      has_field_combat_skill_type: # Field №2
        value: (bit_field.value & 00000000000000000000100) != 0
      has_field_priority: # Field №3
        value: (bit_field.value & 00000000000000000001000) != 0
      has_field_need_line_of_sight: # Field №4
        value: (bit_field.value & 00000000000000000010000) != 0
      has_field_face_target: # Field №5
        value: (bit_field.value & 00000000000000000100000) != 0
      has_field_can_use_if_target_inactive: # Field №6
        value: (bit_field.value & 00000000000000001000000) != 0
      has_field_enable_skill_prepare: # Field №7
        value: (bit_field.value & 00000000000000010000000) != 0
      has_field_skill_prepare_timeout: # Field №8
        value: (bit_field.value & 00000000000000100000000) != 0
      has_field_skill_prepare_speed_level: # Field №9
        value: (bit_field.value & 00000000000001000000000) != 0
      has_field_cast_condition: # Field №10
        value: (bit_field.value & 00000000000010000000000) != 0
      has_field_cd: # Field №11
        value: (bit_field.value & 00000000000100000000000) != 0
      has_field_cd_upper_range: # Field №12
        value: (bit_field.value & 00000000001000000000000) != 0
      has_field_initial_cd: # Field №13
        value: (bit_field.value & 00000000010000000000000) != 0
      has_field_initial_cd_upper_range: # Field №14
        value: (bit_field.value & 00000000100000000000000) != 0
      has_field_public_cd_group: # Field №15
        value: (bit_field.value & 00000001000000000000000) != 0
      has_field_ignore_gcd: # Field №16
        value: (bit_field.value & 00000010000000000000000) != 0
      has_field_trigger_gcd: # Field №17
        value: (bit_field.value & 00000100000000000000000) != 0
      has_field_trigger_cd_on_start: # Field №18
        value: (bit_field.value & 00001000000000000000000) != 0
      has_field_trigger_cd_on_fail: # Field №19
        value: (bit_field.value & 00010000000000000000000) != 0
      has_field_skill_group_cdid: # Field №20
        value: (bit_field.value & 00100000000000000000000) != 0
      has_field_state_i_ds: # Field №21
        value: (bit_field.value & 01000000000000000000000) != 0
      has_field_skill_querying_time: # Field №22
        value: (bit_field.value & 0b000000010000000000000000000000) != 0
      has_field_command_id: # Field №23
        value: (bit_field.value & 0b000000100000000000000000000000) != 0
      has_field_flag_target_reachable: # Field №24
        value: (bit_field.value & 0b000001000000000000000000000000) != 0
      has_field_flag_self_on_template_collider: # Field №25
        value: (bit_field.value & 0b000010000000000000000000000000) != 0
      has_field_flag_self_in_zone: # Field №26
        value: (bit_field.value & 0b000100000000000000000000000000) != 0
      has_field_flag_target_in_zone: # Field №27
        value: (bit_field.value & 0b001000000000000000000000000000) != 0
      has_field_buddy_skill_condition: # Field №28
        value: (bit_field.value & 0b010000000000000000000000000000) != 0
      has_field_nerve_trigger: # Field №29
        value: (bit_field.value & 0b100000000000000000000000000000) != 0
