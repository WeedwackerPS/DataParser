types:
  config_v_map_mark:
    seq:
      - id: base
        type: config_v_base_mark
      - id: bit_field
        type: u1
      - id: visible_type_mini_map
        type: enum__mark_visible_type
        if: has_field_visible_type_mini_map
      - id: visible_type_level_map
        type: enum__mark_visible_type
        if: has_field_visible_type_level_map
      - id: layer_type
        type: enum__mark_layer_type
        if: has_field_layer_type
    instances:
      has_field_visible_type_mini_map: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_visible_type_level_map: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_layer_type: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      type:
        value: base.type
      res_path:
        value: base.res_path
