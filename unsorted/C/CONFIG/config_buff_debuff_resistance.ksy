types:
  config_buff_debuff_resistance:
    seq:
      - id: bit_field
        type: u1
      - id: resistance_buff_debuffs
        type: array_of__enum__ability_state__length_u
        if: has_field_resistance_buff_debuffs
      - id: resistance_ratio
        type: f4
        if: has_field_resistance_ratio
      - id: duration_ratio
        type: f4
        if: has_field_duration_ratio
    instances:
      has_field_resistance_buff_debuffs: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_resistance_ratio: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_duration_ratio: # Field №2
        value: (bit_field & 0b100) != 0
