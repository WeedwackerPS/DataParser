types:
  config_mark_icon:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: icon_name
        type: aux_types::string
        if: has_field_icon_name
      - id: material_index
        type: aux_types::vlq_base128_le_u
        if: has_field_material_index
      - id: mark_type
        type: enum__mark_type
        if: has_field_mark_type
      - id: effect_name
        type: aux_types::string
        if: has_field_effect_name
      - id: ignore_raycast_on_map
        type: u1
        if: has_field_ignore_raycast_on_map
      - id: title
        type: aux_types::string
        if: has_field_title
      - id: desc
        type: aux_types::string
        if: has_field_desc
      - id: mark_layer
        type: enum__mark_order
        if: has_field_mark_layer
      - id: visibility_on_radar
        type: enum__mark_visibility_type
        if: has_field_visibility_on_radar
      - id: visibility_on_map
        type: enum__mark_visibility_type
        if: has_field_visibility_on_map
      - id: show_height_on_radar
        type: u1
        if: has_field_show_height_on_radar
      - id: show_on_locked_area
        type: u1
        if: has_field_show_on_locked_area
      - id: plugin_icon_type
        type: enum__mark_plugin_icon_type
        if: has_field_plugin_icon_type
    instances:
      has_field_icon_name: # Field №0
        value: (bit_field.value & 000001) != 0
      has_field_material_index: # Field №1
        value: (bit_field.value & 000010) != 0
      has_field_mark_type: # Field №2
        value: (bit_field.value & 000100) != 0
      has_field_effect_name: # Field №3
        value: (bit_field.value & 001000) != 0
      has_field_ignore_raycast_on_map: # Field №4
        value: (bit_field.value & 010000) != 0
      has_field_title: # Field №5
        value: (bit_field.value & 0b0000000100000) != 0
      has_field_desc: # Field №6
        value: (bit_field.value & 0b0000001000000) != 0
      has_field_mark_layer: # Field №7
        value: (bit_field.value & 0b0000010000000) != 0
      has_field_visibility_on_radar: # Field №8
        value: (bit_field.value & 0b0000100000000) != 0
      has_field_visibility_on_map: # Field №9
        value: (bit_field.value & 0b0001000000000) != 0
      has_field_show_height_on_radar: # Field №10
        value: (bit_field.value & 0b0010000000000) != 0
      has_field_show_on_locked_area: # Field №11
        value: (bit_field.value & 0b0100000000000) != 0
      has_field_plugin_icon_type: # Field №12
        value: (bit_field.value & 0b1000000000000) != 0
