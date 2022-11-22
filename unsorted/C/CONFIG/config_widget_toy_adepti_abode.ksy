types:
  config_widget_toy_adepti_abode:
    seq:
      - id: base
        type: config_widget_toy_create_gadget_base
      - id: bit_field
        type: u1
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: effect_last_time
        type: f4
        if: has_field_effect_last_time
    instances:
      has_field_ability_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_effect_last_time: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      gadget_id:
        value: base.gadget_id
      is_set_camera:
        value: base.is_set_camera
      set_camera_angle:
        value: base.set_camera_angle
      do_bag_type:
        value: base.do_bag_type
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
