types:
  config_skin_info:
    seq:
      - id: bit_field
        type: u1
      - id: effects
        type: config_skin_fashion_effects
        if: has_field_effects
      - id: gadgets
        type: config_skin_fashion_gadgets
        if: has_field_gadgets
    instances:
      has_field_effects: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_gadgets: # Field №1
        value: (bit_field & 0b10) != 0
