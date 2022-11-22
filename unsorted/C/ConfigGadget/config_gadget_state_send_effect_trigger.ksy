types:
  config_gadget_state_send_effect_trigger:
    seq:
      - id: base
        type: config_gadget_state_action
      - id: bit_field
        type: u1
      - id: parameter
        type: aux_types::string
        if: has_field_parameter
      - id: type
        type: enum__animator_param_type
        if: has_field_type
      - id: value
        type: aux_types::vlq_base128_le_s
        if: has_field_value
      - id: effect_pattern
        type: aux_types::string
        if: has_field_effect_pattern
    instances:
      has_field_parameter: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_type: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_value: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_effect_pattern: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      gadget_state:
        value: base.gadget_state
      predicate:
        value: base.predicate
