types:
  config_sound_bank_unload_policy:
    seq:
      - id: bit_field
        type: u1
      - id: policy
        type: enum__sound_bank_unload_policy
        if: has_field_policy
      - id: parameter
        type: f4
        if: has_field_parameter
    instances:
      has_field_policy: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_parameter: # Field №1
        value: (bit_field & 0b10) != 0
