types:
  config_monster_skin:
    seq:
      - id: base
        type: config_skin
      - id: bit_field
        type: u1
      - id: skin_colors
        type: array_of__skin_color__length_u
        if: has_field_skin_colors
    instances:
      has_field_skin_colors: # Field №0
        value: (bit_field & 0b1) != 0
