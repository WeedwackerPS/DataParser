types:
  config_platform_grahpics_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: volatile_settings
        type: dict_of__enum__volatile_type_config_graphics_volatile_setting
        if: has_field_volatile_settings
      - id: device_settings
        type: dict_of__aux_types__string_config_graphics_recommend_setting
        if: has_field_device_settings
      - id: target_frame_rate
        type: aux_types::vlq_base128_le_u
        if: has_field_target_frame_rate
      - id: antialiasing_method
        type: enum__antialiasing_method
        if: has_field_antialiasing_method
      - id: taa_quality
        type: enum__taa_quality
        if: has_field_taa_quality
      - id: smaa_quality
        type: enum__smaa_quality
        if: has_field_smaa_quality
      - id: candidate_volatile
        type: array_of__enum__volatile_type__length_u
        if: has_field_candidate_volatile
      - id: postprocess_effect_options
        type: dict_of__enum__option_type_config_postprocess_effect_setting
        if: has_field_postprocess_effect_options
      - id: particle_effect_options
        type: dict_of__enum__option_type_config_particle_effect_setting
        if: has_field_particle_effect_options
      - id: comprehensive_quality_options
        type: dict_of__enum__option_type_config_comprehensive_quality_setting
        if: has_field_comprehensive_quality_options
      - id: setting_entry
        type: array_of__config_graphics_setting_entry__length_u
        if: has_field_setting_entry
      - id: performance_settings
        type: dict_of__aux_types__string_config_performance_setting
        if: has_field_performance_settings
      - id: global_token_settings
        type: config_global_token
        if: has_field_global_token_settings
      - id: shadow_quality_settings
        type: dict_of__enum__shadow_quality_config_shadow_quality_setting
        if: has_field_shadow_quality_settings
      - id: cost_ratio_grade
        type: dict_of__enum__perf_cost_ratio_grade_f4
        if: has_field_cost_ratio_grade
      - id: level_streaming_cost_map
        type: dict_of__aux_types__string_aux_types__vlq_base128_le_s
        if: has_field_level_streaming_cost_map
      - id: fade_distance_quality_settings
        type: dict_of__enum__fade_tint_quality_level_config_tint_fade_setting
        if: has_field_fade_distance_quality_settings
    instances:
      has_field_volatile_settings: # Field №0
        value: (bit_field.value & 0000000001) != 0
      has_field_device_settings: # Field №1
        value: (bit_field.value & 0000000010) != 0
      has_field_target_frame_rate: # Field №2
        value: (bit_field.value & 0000000100) != 0
      has_field_antialiasing_method: # Field №3
        value: (bit_field.value & 0000001000) != 0
      has_field_taa_quality: # Field №4
        value: (bit_field.value & 0000010000) != 0
      has_field_smaa_quality: # Field №5
        value: (bit_field.value & 0000100000) != 0
      has_field_candidate_volatile: # Field №6
        value: (bit_field.value & 0001000000) != 0
      has_field_postprocess_effect_options: # Field №7
        value: (bit_field.value & 0010000000) != 0
      has_field_particle_effect_options: # Field №8
        value: (bit_field.value & 0100000000) != 0
      has_field_comprehensive_quality_options: # Field №9
        value: (bit_field.value & 0b00000001000000000) != 0
      has_field_setting_entry: # Field №10
        value: (bit_field.value & 0b00000010000000000) != 0
      has_field_performance_settings: # Field №11
        value: (bit_field.value & 0b00000100000000000) != 0
      has_field_global_token_settings: # Field №12
        value: (bit_field.value & 0b00001000000000000) != 0
      has_field_shadow_quality_settings: # Field №13
        value: (bit_field.value & 0b00010000000000000) != 0
      has_field_cost_ratio_grade: # Field №14
        value: (bit_field.value & 0b00100000000000000) != 0
      has_field_level_streaming_cost_map: # Field №15
        value: (bit_field.value & 0b01000000000000000) != 0
      has_field_fade_distance_quality_settings: # Field №16
        value: (bit_field.value & 0b10000000000000000) != 0
