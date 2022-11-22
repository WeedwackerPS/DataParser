types:
  config_ai_tactic_base_setting:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: condition
        type: config_ai_tactic_condition
        if: has_field_condition
      - id: nerve_trigger
        type: array_of__enum__neuron_name__length_u
        if: has_field_nerve_trigger
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_condition: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_nerve_trigger: # Field №2
        value: (bit_field & 0b100) != 0
