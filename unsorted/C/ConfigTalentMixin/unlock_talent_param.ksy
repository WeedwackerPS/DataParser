types:
  unlock_talent_param:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: talent_param
        type: aux_types::string
        if: has_field_talent_param
    instances:
      has_field_ability_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_talent_param: # Field №1
        value: (bit_field & 0b10) != 0
