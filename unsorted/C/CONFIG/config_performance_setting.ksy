types:
  config_performance_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: scene_prop_cache_count
        type: aux_types::vlq_base128_le_s
        if: has_field_scene_prop_cache_count
      - id: bundle_unload_lru_retire_time
        type: f4
        if: has_field_bundle_unload_lru_retire_time
      - id: bundle_unload_lru_retire_size
        type: aux_types::vlq_base128_le_s
        if: has_field_bundle_unload_lru_retire_size
      - id: bundle_unload_lru_capcity
        type: aux_types::vlq_base128_le_s
        if: has_field_bundle_unload_lru_capcity
      - id: game_object_pool_count
        type: aux_types::vlq_base128_le_s
        if: has_field_game_object_pool_count
      - id: use_final_ik
        type: u1
        if: has_field_use_final_ik
      - id: enable_audio_surface_multiprobing
        type: u1
        if: has_field_enable_audio_surface_multiprobing
      - id: enable_audio_focus_attenuation
        type: u1
        if: has_field_enable_audio_focus_attenuation
      - id: enable_audio_occlusion_racasts
        type: u1
        if: has_field_enable_audio_occlusion_racasts
      - id: enable_audio_listener_outreach_detetion
        type: u1
        if: has_field_enable_audio_listener_outreach_detetion
      - id: cached_entity_time
        type: f4
        if: has_field_cached_entity_time
      - id: cached_entity_dist
        type: f4
        if: has_field_cached_entity_dist
      - id: use_head_control
        type: u1
        if: has_field_use_head_control
      - id: use_avatar_grass_displacement
        type: u1
        if: has_field_use_avatar_grass_displacement
      - id: use_other_enttiy_grass_displacement
        type: u1
        if: has_field_use_other_enttiy_grass_displacement
      - id: use_wind_zone_grass_displacement
        type: u1
        if: has_field_use_wind_zone_grass_displacement
      - id: use_ragdoll
        type: u1
        if: has_field_use_ragdoll
      - id: use_fbik
        type: u1
        if: has_field_use_fbik
      - id: wind_flag_max_quality_level
        type: aux_types::vlq_base128_le_s
        if: has_field_wind_flag_max_quality_level
      - id: use_dynamic_bone
        type: u1
        if: has_field_use_dynamic_bone
      - id: climb_ik_quality_level
        type: aux_types::vlq_base128_le_s
        if: has_field_climb_ik_quality_level
      - id: use_climb_ik
        type: u1
        if: has_field_use_climb_ik
      - id: use_move_ik
        type: u1
        if: has_field_use_move_ik
      - id: use_effect_lod
        type: u1
        if: has_field_use_effect_lod
      - id: ragdoll_limit_count
        type: aux_types::vlq_base128_le_s
        if: has_field_ragdoll_limit_count
      - id: ragdoll_pool_size
        type: aux_types::vlq_base128_le_s
        if: has_field_ragdoll_pool_size
      - id: ragdoll_pool_same_id_size
        type: aux_types::vlq_base128_le_s
        if: has_field_ragdoll_pool_same_id_size
    instances:
      has_field_scene_prop_cache_count: # Field №0
        value: (bit_field.value & 00000000000000000001) != 0
      has_field_bundle_unload_lru_retire_time: # Field №1
        value: (bit_field.value & 00000000000000000010) != 0
      has_field_bundle_unload_lru_retire_size: # Field №2
        value: (bit_field.value & 00000000000000000100) != 0
      has_field_bundle_unload_lru_capcity: # Field №3
        value: (bit_field.value & 00000000000000001000) != 0
      has_field_game_object_pool_count: # Field №4
        value: (bit_field.value & 00000000000000010000) != 0
      has_field_use_final_ik: # Field №5
        value: (bit_field.value & 00000000000000100000) != 0
      has_field_enable_audio_surface_multiprobing: # Field №6
        value: (bit_field.value & 00000000000001000000) != 0
      has_field_enable_audio_focus_attenuation: # Field №7
        value: (bit_field.value & 00000000000010000000) != 0
      has_field_enable_audio_occlusion_racasts: # Field №8
        value: (bit_field.value & 00000000000100000000) != 0
      has_field_enable_audio_listener_outreach_detetion: # Field №9
        value: (bit_field.value & 00000000001000000000) != 0
      has_field_cached_entity_time: # Field №10
        value: (bit_field.value & 00000000010000000000) != 0
      has_field_cached_entity_dist: # Field №11
        value: (bit_field.value & 00000000100000000000) != 0
      has_field_use_head_control: # Field №12
        value: (bit_field.value & 00000001000000000000) != 0
      has_field_use_avatar_grass_displacement: # Field №13
        value: (bit_field.value & 00000010000000000000) != 0
      has_field_use_other_enttiy_grass_displacement: # Field №14
        value: (bit_field.value & 00000100000000000000) != 0
      has_field_use_wind_zone_grass_displacement: # Field №15
        value: (bit_field.value & 00001000000000000000) != 0
      has_field_use_ragdoll: # Field №16
        value: (bit_field.value & 00010000000000000000) != 0
      has_field_use_fbik: # Field №17
        value: (bit_field.value & 00100000000000000000) != 0
      has_field_wind_flag_max_quality_level: # Field №18
        value: (bit_field.value & 01000000000000000000) != 0
      has_field_use_dynamic_bone: # Field №19
        value: (bit_field.value & 0b000000010000000000000000000) != 0
      has_field_climb_ik_quality_level: # Field №20
        value: (bit_field.value & 0b000000100000000000000000000) != 0
      has_field_use_climb_ik: # Field №21
        value: (bit_field.value & 0b000001000000000000000000000) != 0
      has_field_use_move_ik: # Field №22
        value: (bit_field.value & 0b000010000000000000000000000) != 0
      has_field_use_effect_lod: # Field №23
        value: (bit_field.value & 0b000100000000000000000000000) != 0
      has_field_ragdoll_limit_count: # Field №24
        value: (bit_field.value & 0b001000000000000000000000000) != 0
      has_field_ragdoll_pool_size: # Field №25
        value: (bit_field.value & 0b010000000000000000000000000) != 0
      has_field_ragdoll_pool_same_id_size: # Field №26
        value: (bit_field.value & 0b100000000000000000000000000) != 0
