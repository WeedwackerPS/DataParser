types:
  config_widget_toy_camera:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: camera_id
        type: aux_types::vlq_base128_le_u
        if: has_field_camera_id
    instances:
      has_field_camera_id: # Field №0
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
