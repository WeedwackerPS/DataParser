types:
  config_buff_debuff_addition:
    seq:
      - id: bit_field
        type: u1
      - id: addition_buff_debuffs
        type: array_of__enum__ability_state__length_u
        if: has_field_addition_buff_debuffs
      - id: addition_ratio
        type: f4
        if: has_field_addition_ratio
    instances:
      has_field_addition_buff_debuffs: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_addition_ratio: # Field №1
        value: (bit_field & 0b10) != 0
