types:
  config_shadow_quality_setting:
    seq:
      - id: bit_field
        type: u1
      - id: shadow_distance
        type: aux_types::vlq_base128_le_s
        if: has_field_shadow_distance
      - id: shadow_resolution
        type: enum__config_shadow_resolution
        if: has_field_shadow_resolution
      - id: shadow_cascade_split_count
        type: aux_types::vlq_base128_le_s
        if: has_field_shadow_cascade_split_count
      - id: per_obj_shadow_quality
        type: aux_types::vlq_base128_le_s
        if: has_field_per_obj_shadow_quality
      - id: shadow_blend
        type: u1
        if: has_field_shadow_blend
      - id: per_object_pcf
        type: u1
        if: has_field_per_object_pcf
      - id: enable_dynamic_shadow
        type: u1
        if: has_field_enable_dynamic_shadow
    instances:
      has_field_shadow_distance: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_shadow_resolution: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_shadow_cascade_split_count: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_per_obj_shadow_quality: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_shadow_blend: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_per_object_pcf: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_enable_dynamic_shadow: # Field №6
        value: (bit_field & 0b1000000) != 0
