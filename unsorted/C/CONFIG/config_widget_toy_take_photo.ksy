types:
  config_widget_toy_take_photo:
    seq:
      - id: base
        type: config_base_widget_toy
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
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
