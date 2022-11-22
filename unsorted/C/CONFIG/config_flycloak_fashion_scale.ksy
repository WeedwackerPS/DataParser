types:
  config_flycloak_fashion_scale:
    seq:
      - id: bit_field
        type: u1
      - id: male
        type: f4
        if: has_field_male
      - id: lady
        type: f4
        if: has_field_lady
      - id: boy
        type: f4
        if: has_field_boy
      - id: girl
        type: f4
        if: has_field_girl
      - id: loli
        type: f4
        if: has_field_loli
    instances:
      has_field_male: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_lady: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_boy: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_girl: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_loli: # Field №4
        value: (bit_field & 0b10000) != 0
