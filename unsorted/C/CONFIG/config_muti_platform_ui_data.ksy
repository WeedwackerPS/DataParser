types:
  config_muti_platform_ui_data:
    seq:
      - id: bit_field
        type: u1
      - id: multi_platform
        type: dict_of__aux_types__string_config_platform_ui_data
        if: has_field_multi_platform
    instances:
      has_field_multi_platform: # Field №0
        value: (bit_field & 0b1) != 0
