types:
  config_flycloak_fashion_effect:
    seq:
      - id: bit_field
        type: u1
      - id: tail
        type: aux_types::string
        if: has_field_tail
      - id: fly_start
        type: aux_types::string
        if: has_field_fly_start
      - id: fly_end
        type: aux_types::string
        if: has_field_fly_end
    instances:
      has_field_tail: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_fly_start: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_fly_end: # Field №2
        value: (bit_field & 0b100) != 0
