types:
  config_compound_input_action:
    seq:
      - id: base
        type: config_base_input_action
      - id: bit_field
        type: u1
      - id: action1
        type: enum__input_action_type
        if: has_field_action1
      - id: action2
        type: enum__input_action_type
        if: has_field_action2
      - id: compound_type
        type: enum__action_compound_type
        if: has_field_compound_type
    instances:
      has_field_action1: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_action2: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_compound_type: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      value_type:
        value: base.value_type
      description_text_id:
        value: base.description_text_id
