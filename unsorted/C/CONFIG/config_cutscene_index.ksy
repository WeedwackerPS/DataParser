types:
  config_cutscene_index:
    seq:
      - id: bit_field
        type: u1
      - id: normal
        type: config_cutscene_context
        if: has_field_normal
      - id: platform
        type: dict_of__aux_types__vlq_base128_le_s_config_cutscene_context
        if: has_field_platform
    instances:
      has_field_normal: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_platform: # Field №1
        value: (bit_field & 0b10) != 0
