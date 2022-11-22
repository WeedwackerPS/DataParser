types:
  unlock_controller_conditions:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: condition_name
        type: aux_types::string
        if: has_field_condition_name
    instances:
      has_field_condition_name: # Field №0
        value: (bit_field & 0b1) != 0
