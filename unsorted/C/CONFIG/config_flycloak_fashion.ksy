types:
  config_flycloak_fashion:
    seq:
      - id: bit_field
        type: u1
      - id: effects
        type: config_flycloak_fashion_effect
        if: has_field_effects
      - id: scale
        type: config_flycloak_fashion_scale
        if: has_field_scale
    instances:
      has_field_effects: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_scale: # Field №1
        value: (bit_field & 0b10) != 0
