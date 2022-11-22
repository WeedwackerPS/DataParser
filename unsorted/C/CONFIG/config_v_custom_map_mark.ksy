types:
  config_v_custom_map_mark:
    seq:
      - id: base
        type: config_v_map_mark
      - id: bit_field
        type: u1
      - id: custom_type
        type: enum__mark_custom_type
        if: has_field_custom_type
    instances:
      has_field_custom_type: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      visible_type_mini_map:
        value: base.visible_type_mini_map
      visible_type_level_map:
        value: base.visible_type_level_map
      layer_type:
        value: base.layer_type
      type:
        value: base.type
      res_path:
        value: base.res_path
