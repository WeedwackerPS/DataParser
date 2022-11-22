types:
  config_skin_fashion_effects:
    seq:
      - id: bit_field
        type: u1
      - id: old_effects
        type: array_of__aux_types__string__length_u
        if: has_field_old_effects
      - id: new_effects
        type: array_of__aux_types__string__length_u
        if: has_field_new_effects
    instances:
      has_field_old_effects: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_new_effects: # Field №1
        value: (bit_field & 0b10) != 0
