types:
  config_widget_toy_create_gadget_base:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: is_set_camera
        type: u1
        if: has_field_is_set_camera
      - id: set_camera_angle
        type: f4
        if: has_field_set_camera_angle
      - id: do_bag_type
        type: enum__create_sever_gadget_op_type
        if: has_field_do_bag_type
    instances:
      has_field_gadget_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_is_set_camera: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_set_camera_angle: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_do_bag_type: # Field №3
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
