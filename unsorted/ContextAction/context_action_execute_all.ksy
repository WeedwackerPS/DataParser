types:
  context_action_execute_all:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: actions
        type: array_of__disp__context_action__length_u
        if: has_field_actions
    instances:
      has_field_actions: # Field №0
        value: (bit_field & 0b1) != 0
