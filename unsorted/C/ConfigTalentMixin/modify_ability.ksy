types:
  modify_ability:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: param_special
        type: aux_types::string
        if: has_field_param_special
      - id: param_delta
        type: aux_types::dynamic_argument
        if: has_field_param_delta
      - id: param_ratio
        type: aux_types::dynamic_argument
        if: has_field_param_ratio
    instances:
      has_field_ability_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_param_special: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_param_delta: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_param_ratio: # Field №3
        value: (bit_field & 0b1000) != 0
