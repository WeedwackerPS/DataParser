types:
  config_widget_take_photo:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: u1
      - id: has_camera_effect
        type: u1
        if: has_field_has_camera_effect
      - id: camera_ui_effect
        type: aux_types::string
        if: has_field_camera_ui_effect
      - id: camera_screen_effect
        type: aux_types::string
        if: has_field_camera_screen_effect
      - id: main_camera_effect
        type: aux_types::string
        if: has_field_main_camera_effect
    instances:
      has_field_has_camera_effect: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_camera_ui_effect: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_camera_screen_effect: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_main_camera_effect: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      material_id:
        value: base.material_id
      is_consume_material:
        value: base.is_consume_material
      is_equipable:
        value: base.is_equipable
      cool_down:
        value: base.cool_down
      cool_down_on_fail:
        value: base.cool_down_on_fail
      cool_down_group:
        value: base.cool_down_group
      is_cd_under_time_scale:
        value: base.is_cd_under_time_scale
      is_allowed_in_dungeon:
        value: base.is_allowed_in_dungeon
      is_allowed_in_room:
        value: base.is_allowed_in_room
      ornaments_type:
        value: base.ornaments_type
