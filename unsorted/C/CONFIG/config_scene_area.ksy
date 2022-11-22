types:
  config_scene_area:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__scene_area_type
        if: has_field_type
      - id: unlocked
        type: u1
        if: has_field_unlocked
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_unlocked: # Field №1
        value: (bit_field & 0b10) != 0
