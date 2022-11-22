types:
  config_gadget_state_fire_effect:
    seq:
      - id: base
        type: config_gadget_state_action
      - id: bit_field
        type: u1
      - id: root_name
        type: aux_types::string
        if: has_field_root_name
      - id: effect_pattern
        type: aux_types::string
        if: has_field_effect_pattern
    instances:
      has_field_root_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_effect_pattern: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      gadget_state:
        value: base.gadget_state
      predicate:
        value: base.predicate
