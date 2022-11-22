types:
  config_preload:
    seq:
      - id: bit_field
        type: u1
      - id: effects
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_effects
      - id: abilities
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_abilities
      - id: gadgets
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_gadgets
      - id: cameras
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_cameras
      - id: anim_event_patterns
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_anim_event_patterns
      - id: skill_icons
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_skill_icons
      - id: misc_obj_paths
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_misc_obj_paths
      - id: weathers
        type: dict_of__enum__config_preload_type_array_of__aux_types__string__length_u
        if: has_field_weathers
    instances:
      has_field_effects: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_abilities: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_gadgets: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_cameras: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_anim_event_patterns: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_skill_icons: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_misc_obj_paths: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_weathers: # Field №7
        value: (bit_field & 0b10000000) != 0
