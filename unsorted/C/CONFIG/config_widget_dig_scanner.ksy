types:
  config_widget_dig_scanner:
    seq:
      - id: base
        type: config_widget_toy_create_gadget_base
    instances:
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
