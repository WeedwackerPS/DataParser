types:
  config_mark_global:
    seq:
      - id: bit_field
        type: u1
      - id: mark_icon_config
        type: dict_of__enum__mark_icon_type_config_mark_icon
        if: has_field_mark_icon_config
      - id: custom_mark_icons
        type: array_of__enum__mark_icon_type__length_u
        if: has_field_custom_mark_icons
      - id: scene_building_marks
        type: dict_of__enum__scene_building_type_enum__mark_icon_type
        if: has_field_scene_building_marks
      - id: mark_order_to_layer_map
        type: dict_of__enum__mark_order_aux_types__vlq_base128_le_s
        if: has_field_mark_order_to_layer_map
    instances:
      has_field_mark_icon_config: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_custom_mark_icons: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_scene_building_marks: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_mark_order_to_layer_map: # Field №3
        value: (bit_field & 0b1000) != 0
