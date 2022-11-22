types:
  config_gadget_misc:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: chest
        type: config_chest
        if: has_field_chest
      - id: gear
        type: config_gear
        if: has_field_gear
      - id: force_field
        type: disp__config_scene_point
        if: has_field_force_field
      - id: crystal
        type: config_crystal
        if: has_field_crystal
      - id: seal
        type: config_seal
        if: has_field_seal
      - id: pickup
        type: config_pickup
        if: has_field_pickup
      - id: wind_seed
        type: config_wind_seed
        if: has_field_wind_seed
      - id: cannon
        type: config_cannon
        if: has_field_cannon
      - id: auto_door
        type: config_auto_dool
        if: has_field_auto_door
      - id: custom_gadget_node
        type: config_custom_gadget_node
        if: has_field_custom_gadget_node
      - id: escape_effect
        type: aux_types::string
        if: has_field_escape_effect
      - id: guide_point
        type: u1
        if: has_field_guide_point
      - id: is_ui_point
        type: u1
        if: has_field_is_ui_point
      - id: guide_point_managed_by_indicator
        type: u1
        if: has_field_guide_point_managed_by_indicator
      - id: guide_point_type
        type: enum__target_indicator_type
        if: has_field_guide_point_type
      - id: target_indicator_y_offset
        type: f4
        if: has_field_target_indicator_y_offset
      - id: guide_point_config
        type: config_guide_point
        if: has_field_guide_point_config
    instances:
      has_field_chest: # Field №0
        value: (bit_field.value & 0000000001) != 0
      has_field_gear: # Field №1
        value: (bit_field.value & 0000000010) != 0
      has_field_force_field: # Field №2
        value: (bit_field.value & 0000000100) != 0
      has_field_crystal: # Field №3
        value: (bit_field.value & 0000001000) != 0
      has_field_seal: # Field №4
        value: (bit_field.value & 0000010000) != 0
      has_field_pickup: # Field №5
        value: (bit_field.value & 0000100000) != 0
      has_field_wind_seed: # Field №6
        value: (bit_field.value & 0001000000) != 0
      has_field_cannon: # Field №7
        value: (bit_field.value & 0010000000) != 0
      has_field_auto_door: # Field №8
        value: (bit_field.value & 0100000000) != 0
      has_field_custom_gadget_node: # Field №9
        value: (bit_field.value & 0b00000001000000000) != 0
      has_field_escape_effect: # Field №10
        value: (bit_field.value & 0b00000010000000000) != 0
      has_field_guide_point: # Field №11
        value: (bit_field.value & 0b00000100000000000) != 0
      has_field_is_ui_point: # Field №12
        value: (bit_field.value & 0b00001000000000000) != 0
      has_field_guide_point_managed_by_indicator: # Field №13
        value: (bit_field.value & 0b00010000000000000) != 0
      has_field_guide_point_type: # Field №14
        value: (bit_field.value & 0b00100000000000000) != 0
      has_field_target_indicator_y_offset: # Field №15
        value: (bit_field.value & 0b01000000000000000) != 0
      has_field_guide_point_config: # Field №16
        value: (bit_field.value & 0b10000000000000000) != 0
