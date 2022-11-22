types:
  config_external_voice_sound:
    seq:
      - id: bit_field
        type: u1
      - id: source_file_name
        type: aux_types::string
        if: has_field_source_file_name
      - id: rate
        type: f4
        if: has_field_rate
      - id: avatar_name
        type: aux_types::string
        if: has_field_avatar_name
      - id: emotion
        type: aux_types::string
        if: has_field_emotion
      - id: gender
        type: aux_types::vlq_base128_le_s
        if: has_field_gender
    instances:
      has_field_source_file_name: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_rate: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_avatar_name: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_emotion: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_gender: # Field №4
        value: (bit_field & 0b10000) != 0
