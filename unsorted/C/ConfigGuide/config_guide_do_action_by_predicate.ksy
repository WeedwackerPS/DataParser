types:
  config_guide_do_action_by_predicate:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: predicates
        type: array_of__array_of__disp__config_base_guide__length_u__length_u
        if: has_field_predicates
      - id: actions
        type: array_of__disp__config_base_guide__length_u
        if: has_field_actions
    instances:
      has_field_predicates: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_actions: # Field №1
        value: (bit_field & 0b10) != 0
