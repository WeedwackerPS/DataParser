types:
  config_content_restriction:
    seq:
      - id: bit_field
        type: u1
      - id: country_code
        type: aux_types::string
        if: has_field_country_code
      - id: age
        type: aux_types::vlq_base128_le_s
        if: has_field_age
    instances:
      has_field_country_code: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_age: # Field №1
        value: (bit_field & 0b10) != 0
