types:
  config_key_input:
    seq:
      - id: bit_field
        type: u1
      - id: key_id
        type: aux_types::vlq_base128_le_s
        if: has_field_key_id
      - id: input_key_code
        type: aux_types::vlq_base128_le_s
        if: has_field_input_key_code
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: ability_cd
        type: f4
        if: has_field_ability_cd
    instances:
      has_field_key_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_input_key_code: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_ability_name: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_ability_cd: # Field №3
        value: (bit_field & 0b1000) != 0
