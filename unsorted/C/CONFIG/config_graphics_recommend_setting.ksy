types:
  config_graphics_recommend_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: performance_quality
        type: aux_types::string
        if: has_field_performance_quality
      - id: virtual_joystick_radius
        type: f4
        if: has_field_virtual_joystick_radius
      - id: level_streaming_config
        type: aux_types::string
        if: has_field_level_streaming_config
      - id: ui_cache_config
        type: aux_types::string
        if: has_field_ui_cache_config
      - id: light_on_level
        type: enum__light_level
        if: has_field_light_on_level
      - id: requirements
        type: array_of__config_graphics_requirement__length_u
        if: has_field_requirements
      - id: texture_streaming_budget
        type: f4
        if: has_field_texture_streaming_budget
      - id: enable_cutscene_texture_streaming
        type: aux_types::vlq_base128_le_s
        if: has_field_enable_cutscene_texture_streaming
      - id: texture_streaming_enabled
        type: aux_types::vlq_base128_le_s
        if: has_field_texture_streaming_enabled
      - id: enable_ui_camera_full_resolution
        type: aux_types::vlq_base128_le_s
        if: has_field_enable_ui_camera_full_resolution
      - id: preload_ui_scene
        type: aux_types::vlq_base128_le_s
        if: has_field_preload_ui_scene
      - id: disable_do_f
        type: aux_types::vlq_base128_le_s
        if: has_field_disable_do_f
      - id: enable_subpass
        type: aux_types::vlq_base128_le_s
        if: has_field_enable_subpass
      - id: use_per_object_light_in_forward
        type: aux_types::vlq_base128_le_s
        if: has_field_use_per_object_light_in_forward
      - id: render_resolutions
        type: array_of__config_render_resolution__length_u
        if: has_field_render_resolutions
      - id: quality_level
        type: aux_types::string
        if: has_field_quality_level
      - id: default_volatile_grade
        type: aux_types::vlq_base128_le_s
        if: has_field_default_volatile_grade
      - id: avatar_outline_thresh
        type: f4
        if: has_field_avatar_outline_thresh
      - id: avatar_shadow_thresh
        type: f4
        if: has_field_avatar_shadow_thresh
      - id: avatar_motion_vector_thresh
        type: f4
        if: has_field_avatar_motion_vector_thresh
      - id: view_distance_ratio
        type: f4
        if: has_field_view_distance_ratio
      - id: grass_quality
        type: enum__grass_quality_level
        if: has_field_grass_quality
      - id: crowd_spawn_distance
        type: aux_types::vlq_base128_le_s
        if: has_field_crowd_spawn_distance
      - id: crowd_despawn_distance
        type: aux_types::vlq_base128_le_s
        if: has_field_crowd_despawn_distance
      - id: entity_lod_config
        type: aux_types::string
        if: has_field_entity_lod_config
      - id: dplacgejoon
        type: array_of__aux_types__string__length_u
        if: has_field_dplacgejoon
    instances:
      has_field_performance_quality: # Field №0
        value: (bit_field.value & 0000000000000000001) != 0
      has_field_virtual_joystick_radius: # Field №1
        value: (bit_field.value & 0000000000000000010) != 0
      has_field_level_streaming_config: # Field №2
        value: (bit_field.value & 0000000000000000100) != 0
      has_field_ui_cache_config: # Field №3
        value: (bit_field.value & 0000000000000001000) != 0
      has_field_light_on_level: # Field №4
        value: (bit_field.value & 0000000000000010000) != 0
      has_field_requirements: # Field №5
        value: (bit_field.value & 0000000000000100000) != 0
      has_field_texture_streaming_budget: # Field №6
        value: (bit_field.value & 0000000000001000000) != 0
      has_field_enable_cutscene_texture_streaming: # Field №7
        value: (bit_field.value & 0000000000010000000) != 0
      has_field_texture_streaming_enabled: # Field №8
        value: (bit_field.value & 0000000000100000000) != 0
      has_field_enable_ui_camera_full_resolution: # Field №9
        value: (bit_field.value & 0000000001000000000) != 0
      has_field_preload_ui_scene: # Field №10
        value: (bit_field.value & 0000000010000000000) != 0
      has_field_disable_do_f: # Field №11
        value: (bit_field.value & 0000000100000000000) != 0
      has_field_enable_subpass: # Field №12
        value: (bit_field.value & 0000001000000000000) != 0
      has_field_use_per_object_light_in_forward: # Field №13
        value: (bit_field.value & 0000010000000000000) != 0
      has_field_render_resolutions: # Field №14
        value: (bit_field.value & 0000100000000000000) != 0
      has_field_quality_level: # Field №15
        value: (bit_field.value & 0001000000000000000) != 0
      has_field_default_volatile_grade: # Field №16
        value: (bit_field.value & 0010000000000000000) != 0
      has_field_avatar_outline_thresh: # Field №17
        value: (bit_field.value & 0100000000000000000) != 0
      has_field_avatar_shadow_thresh: # Field №18
        value: (bit_field.value & 0b00000001000000000000000000) != 0
      has_field_avatar_motion_vector_thresh: # Field №19
        value: (bit_field.value & 0b00000010000000000000000000) != 0
      has_field_view_distance_ratio: # Field №20
        value: (bit_field.value & 0b00000100000000000000000000) != 0
      has_field_grass_quality: # Field №21
        value: (bit_field.value & 0b00001000000000000000000000) != 0
      has_field_crowd_spawn_distance: # Field №22
        value: (bit_field.value & 0b00010000000000000000000000) != 0
      has_field_crowd_despawn_distance: # Field №23
        value: (bit_field.value & 0b00100000000000000000000000) != 0
      has_field_entity_lod_config: # Field №24
        value: (bit_field.value & 0b01000000000000000000000000) != 0
      has_field_dplacgejoon: # Field №25
        value: (bit_field.value & 0b10000000000000000000000000) != 0
