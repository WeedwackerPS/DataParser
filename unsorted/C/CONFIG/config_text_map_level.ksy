types:
  config_text_map_level:
    seq:
      - id: bit_field
        type: u1
      - id: level_map
        type: dict_of__aux_types__vlq_base128_le_s_text_map_level_struct
        if: has_field_level_map
      - id: platform_map
        type: dict_of__enum__text_map_platform_type_aux_types__vlq_base128_le_s
        if: has_field_platform_map
    instances:
      has_field_level_map: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_platform_map: # Field №1
        value: (bit_field & 0b10) != 0
