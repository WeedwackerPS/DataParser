types:
  config_ai_surround_setting:
    seq:
      - id: base
        type: config_ai_tactic_base_setting
      - id: bit_field
        type: u1
      - id: default_setting
        type: config_ai_surround_data
        if: has_field_default_setting
      - id: specification
        type: dict_of__aux_types__vlq_base128_le_s_config_ai_surround_data
        if: has_field_specification
    instances:
      has_field_default_setting: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_specification: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      enable:
        value: base.enable
      condition:
        value: base.condition
      nerve_trigger:
        value: base.nerve_trigger
