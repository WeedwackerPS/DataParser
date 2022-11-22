types:
  config_ability_record_data:
    seq:
      - id: bit_field
        type: u1
      - id: code_version
        type: aux_types::string
        if: has_field_code_version
      - id: digit_version
        type: aux_types::string
        if: has_field_digit_version
      - id: date_time
        type: aux_types::string
        if: has_field_date_time
      - id: data
        type: array_of__config_ability_frame_data__length_u
        if: has_field_data
    instances:
      has_field_code_version: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_digit_version: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_date_time: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_data: # Field №3
        value: (bit_field & 0b1000) != 0
