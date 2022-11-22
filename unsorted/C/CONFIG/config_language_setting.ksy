types:
  config_language_setting:
    seq:
      - id: bit_field
        type: u1
      - id: text_show_types
        type: dict_of__aux_types__string_array_of__enum__text_language_type__length_u
        if: has_field_text_show_types
      - id: text_disable_types
        type: dict_of__aux_types__string_array_of__enum__text_language_type__length_u
        if: has_field_text_disable_types
      - id: voice_show_types
        type: dict_of__aux_types__string_array_of__enum__voice_language_type__length_u
        if: has_field_voice_show_types
      - id: voice_disable_types
        type: dict_of__aux_types__string_array_of__enum__voice_language_type__length_u
        if: has_field_voice_disable_types
    instances:
      has_field_text_show_types: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_text_disable_types: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_voice_show_types: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_voice_disable_types: # Field №3
        value: (bit_field & 0b1000) != 0
