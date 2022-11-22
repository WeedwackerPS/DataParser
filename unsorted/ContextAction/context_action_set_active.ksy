types:
  context_action_set_active:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: ui_element
        type: enum__activity_banner_ui_element_type
        if: has_field_ui_element
      - id: active
        type: u1
        if: has_field_active
      - id: set_parent
        type: u1
        if: has_field_set_parent
    instances:
      has_field_ui_element: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_active: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_set_parent: # Field №2
        value: (bit_field & 0b100) != 0
