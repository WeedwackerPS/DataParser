types:
  config_graphics_volatile_setting:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: frame_rate_grade
        type: aux_types::vlq_base128_le_u
        if: has_field_frame_rate_grade
      - id: render_resolution_grade
        type: aux_types::vlq_base128_le_u
        if: has_field_render_resolution_grade
      - id: shadow_quality_grade
        type: aux_types::vlq_base128_le_u
        if: has_field_shadow_quality_grade
      - id: postprocess_effect_grade
        type: aux_types::vlq_base128_le_u
        if: has_field_postprocess_effect_grade
      - id: particle_effect_grade
        type: aux_types::vlq_base128_le_u
        if: has_field_particle_effect_grade
      - id: comprehensive_quality_grade
        type: aux_types::vlq_base128_le_u
        if: has_field_comprehensive_quality_grade
      - id: v_sync
        type: aux_types::vlq_base128_le_u
        if: has_field_v_sync
      - id: anti_aliasing
        type: aux_types::vlq_base128_le_u
        if: has_field_anti_aliasing
      - id: volumetric_fog
        type: aux_types::vlq_base128_le_u
        if: has_field_volumetric_fog
      - id: reflection
        type: aux_types::vlq_base128_le_u
        if: has_field_reflection
      - id: motion_blur
        type: aux_types::vlq_base128_le_u
        if: has_field_motion_blur
      - id: bloom
        type: aux_types::vlq_base128_le_u
        if: has_field_bloom
      - id: crowd_density
        type: aux_types::vlq_base128_le_u
        if: has_field_crowd_density
      - id: obsolete_online_effect
        type: aux_types::vlq_base128_le_u
        if: has_field_obsolete_online_effect
      - id: screen_subsurface_scattering
        type: aux_types::vlq_base128_le_u
        if: has_field_screen_subsurface_scattering
      - id: online_effect
        type: aux_types::vlq_base128_le_u
        if: has_field_online_effect
    instances:
      has_field_frame_rate_grade: # Field №0
        value: (bit_field.value & 000000001) != 0
      has_field_render_resolution_grade: # Field №1
        value: (bit_field.value & 000000010) != 0
      has_field_shadow_quality_grade: # Field №2
        value: (bit_field.value & 000000100) != 0
      has_field_postprocess_effect_grade: # Field №3
        value: (bit_field.value & 000001000) != 0
      has_field_particle_effect_grade: # Field №4
        value: (bit_field.value & 000010000) != 0
      has_field_comprehensive_quality_grade: # Field №5
        value: (bit_field.value & 000100000) != 0
      has_field_v_sync: # Field №6
        value: (bit_field.value & 001000000) != 0
      has_field_anti_aliasing: # Field №7
        value: (bit_field.value & 010000000) != 0
      has_field_volumetric_fog: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_reflection: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_motion_blur: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_bloom: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_crowd_density: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_obsolete_online_effect: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_screen_subsurface_scattering: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_online_effect: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
