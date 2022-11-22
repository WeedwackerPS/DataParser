types:
  config_guide_avatar_action_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: action
        type: enum__guide_avatar_action
        if: has_field_action
    instances:
      has_field_action: # Field №0
        value: (bit_field & 0b1) != 0
