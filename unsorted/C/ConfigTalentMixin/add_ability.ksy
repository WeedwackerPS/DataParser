types:
  add_ability:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
    instances:
      has_field_ability_name: # Field №0
        value: (bit_field & 0b1) != 0
