types:
  config_ai_sensing:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: settings
        type: dict_of__aux_types__string_config_ai_sensing_setting
        if: has_field_settings
      - id: templates
        type: dict_of__aux_types__string_dict_of__aux_types__string_aux_types__string
        if: has_field_templates
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_settings: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_templates: # Field №2
        value: (bit_field & 0b100) != 0
