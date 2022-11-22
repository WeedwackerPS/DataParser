types:
  config_widget_toy_blessing_camera:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: is_fixed
        type: u1
        if: has_field_is_fixed
    instances:
      has_field_is_fixed: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
