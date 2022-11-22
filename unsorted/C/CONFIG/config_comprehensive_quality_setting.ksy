types:
  config_comprehensive_quality_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: local_lighting_shadow
        type: u1
        if: has_field_local_lighting_shadow
      - id: terrain_blend_distance
        type: aux_types::vlq_base128_le_s
        if: has_field_terrain_blend_distance
      - id: shader_lod_distance
        type: aux_types::vlq_base128_le_s
        if: has_field_shader_lod_distance
      - id: shader_quality_keyword
        type: aux_types::string
        if: has_field_shader_quality_keyword
      - id: level_streaming_config
        type: aux_types::string
        if: has_field_level_streaming_config
      - id: enviro_config
        type: aux_types::string
        if: has_field_enviro_config
      - id: ui_cache_config
        type: aux_types::string
        if: has_field_ui_cache_config
      - id: light_view_distance_ratio
        type: f4
        if: has_field_light_view_distance_ratio
      - id: grass_quality
        type: enum__grass_quality_level
        if: has_field_grass_quality
      - id: light_on_level
        type: enum__light_level
        if: has_field_light_on_level
      - id: entity_lod_config
        type: aux_types::string
        if: has_field_entity_lod_config
      - id: enable_remote_avatar_lod
        type: u1
        if: has_field_enable_remote_avatar_lod
      - id: enable_dynamic_light
        type: u1
        if: has_field_enable_dynamic_light
      - id: fade_tint_distance
        type: f4
        if: has_field_fade_tint_distance
      - id: fade_tint_size
        type: f4
        if: has_field_fade_tint_size
      - id: texture_streaming_budget
        type: f4
        if: has_field_texture_streaming_budget
      - id: fade_tint_quality
        type: enum__fade_tint_quality_level
        if: has_field_fade_tint_quality
      - id: terrain_distance
        type: f4
        if: has_field_terrain_distance
      - id: terrain_normal
        type: f4
        if: has_field_terrain_normal
      - id: shell_count
        type: aux_types::vlq_base128_le_s
        if: has_field_shell_count
      - id: shell_max_objects_count
        type: aux_types::vlq_base128_le_s
        if: has_field_shell_max_objects_count
    instances:
      has_field_local_lighting_shadow: # Field №0
        value: (bit_field.value & 00000000000001) != 0
      has_field_terrain_blend_distance: # Field №1
        value: (bit_field.value & 00000000000010) != 0
      has_field_shader_lod_distance: # Field №2
        value: (bit_field.value & 00000000000100) != 0
      has_field_shader_quality_keyword: # Field №3
        value: (bit_field.value & 00000000001000) != 0
      has_field_level_streaming_config: # Field №4
        value: (bit_field.value & 00000000010000) != 0
      has_field_enviro_config: # Field №5
        value: (bit_field.value & 00000000100000) != 0
      has_field_ui_cache_config: # Field №6
        value: (bit_field.value & 00000001000000) != 0
      has_field_light_view_distance_ratio: # Field №7
        value: (bit_field.value & 00000010000000) != 0
      has_field_grass_quality: # Field №8
        value: (bit_field.value & 00000100000000) != 0
      has_field_light_on_level: # Field №9
        value: (bit_field.value & 00001000000000) != 0
      has_field_entity_lod_config: # Field №10
        value: (bit_field.value & 00010000000000) != 0
      has_field_enable_remote_avatar_lod: # Field №11
        value: (bit_field.value & 00100000000000) != 0
      has_field_enable_dynamic_light: # Field №12
        value: (bit_field.value & 01000000000000) != 0
      has_field_fade_tint_distance: # Field №13
        value: (bit_field.value & 0b000000010000000000000) != 0
      has_field_fade_tint_size: # Field №14
        value: (bit_field.value & 0b000000100000000000000) != 0
      has_field_texture_streaming_budget: # Field №15
        value: (bit_field.value & 0b000001000000000000000) != 0
      has_field_fade_tint_quality: # Field №16
        value: (bit_field.value & 0b000010000000000000000) != 0
      has_field_terrain_distance: # Field №17
        value: (bit_field.value & 0b000100000000000000000) != 0
      has_field_terrain_normal: # Field №18
        value: (bit_field.value & 0b001000000000000000000) != 0
      has_field_shell_count: # Field №19
        value: (bit_field.value & 0b010000000000000000000) != 0
      has_field_shell_max_objects_count: # Field №20
        value: (bit_field.value & 0b100000000000000000000) != 0
