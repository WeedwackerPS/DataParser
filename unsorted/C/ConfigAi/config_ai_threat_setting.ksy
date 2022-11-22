types:
  config_ai_threat_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: enable
        type: u1
        if: has_field_enable
      - id: clear_threat_target_distance
        type: f4
        if: has_field_clear_threat_target_distance
      - id: clear_threat_edge_distance
        type: f4
        if: has_field_clear_threat_edge_distance
      - id: clear_threat_by_lost_path
        type: u1
        if: has_field_clear_threat_by_lost_path
      - id: clear_threat_by_target_out_of_zone
        type: u1
        if: has_field_clear_threat_by_target_out_of_zone
      - id: clear_threat_timer_by_distance
        type: f4
        if: has_field_clear_threat_timer_by_distance
      - id: clear_threat_timer_by_lost_path
        type: f4
        if: has_field_clear_threat_timer_by_lost_path
      - id: clear_threat_timer_by_target_out_of_zone
        type: f4
        if: has_field_clear_threat_timer_by_target_out_of_zone
      - id: view_threat_grow
        type: f4
        if: has_field_view_threat_grow
      - id: hear_threat_grow
        type: f4
        if: has_field_hear_threat_grow
      - id: feel_threat_grow
        type: f4
        if: has_field_feel_threat_grow
      - id: threat_decrease_speed
        type: f4
        if: has_field_threat_decrease_speed
      - id: threat_broadcast_range
        type: f4
        if: has_field_threat_broadcast_range
      - id: view_attenuation
        type: array_of__ai_point__length_u
        if: has_field_view_attenuation
      - id: hear_attenuation
        type: array_of__ai_point__length_u
        if: has_field_hear_attenuation
      - id: resist_taunt_level
        type: enum__taunt_level
        if: has_field_resist_taunt_level
      - id: aux_score_change_target_cd
        type: f4
        if: has_field_aux_score_change_target_cd
      - id: ability_global_value_score_system
        type: config_aits_ability_global_value_setting
        if: has_field_ability_global_value_score_system
      - id: target_distance_score_system
        type: config_aits_target_distance_setting
        if: has_field_target_distance_score_system
      - id: target_bearing_score_system
        type: config_aits_target_bearing_setting
        if: has_field_target_bearing_score_system
    instances:
      has_field_enable: # Field №0
        value: (bit_field.value & 0000000000001) != 0
      has_field_clear_threat_target_distance: # Field №1
        value: (bit_field.value & 0000000000010) != 0
      has_field_clear_threat_edge_distance: # Field №2
        value: (bit_field.value & 0000000000100) != 0
      has_field_clear_threat_by_lost_path: # Field №3
        value: (bit_field.value & 0000000001000) != 0
      has_field_clear_threat_by_target_out_of_zone: # Field №4
        value: (bit_field.value & 0000000010000) != 0
      has_field_clear_threat_timer_by_distance: # Field №5
        value: (bit_field.value & 0000000100000) != 0
      has_field_clear_threat_timer_by_lost_path: # Field №6
        value: (bit_field.value & 0000001000000) != 0
      has_field_clear_threat_timer_by_target_out_of_zone: # Field №7
        value: (bit_field.value & 0000010000000) != 0
      has_field_view_threat_grow: # Field №8
        value: (bit_field.value & 0000100000000) != 0
      has_field_hear_threat_grow: # Field №9
        value: (bit_field.value & 0001000000000) != 0
      has_field_feel_threat_grow: # Field №10
        value: (bit_field.value & 0010000000000) != 0
      has_field_threat_decrease_speed: # Field №11
        value: (bit_field.value & 0100000000000) != 0
      has_field_threat_broadcast_range: # Field №12
        value: (bit_field.value & 0b00000001000000000000) != 0
      has_field_view_attenuation: # Field №13
        value: (bit_field.value & 0b00000010000000000000) != 0
      has_field_hear_attenuation: # Field №14
        value: (bit_field.value & 0b00000100000000000000) != 0
      has_field_resist_taunt_level: # Field №15
        value: (bit_field.value & 0b00001000000000000000) != 0
      has_field_aux_score_change_target_cd: # Field №16
        value: (bit_field.value & 0b00010000000000000000) != 0
      has_field_ability_global_value_score_system: # Field №17
        value: (bit_field.value & 0b00100000000000000000) != 0
      has_field_target_distance_score_system: # Field №18
        value: (bit_field.value & 0b01000000000000000000) != 0
      has_field_target_bearing_score_system: # Field №19
        value: (bit_field.value & 0b10000000000000000000) != 0
