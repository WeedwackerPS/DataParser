types:
  context_action_set_text:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: ui_element
        type: enum__activity_banner_ui_element_type
        if: has_field_ui_element
      - id: text_map
        type: aux_types::string
        if: has_field_text_map
    instances:
      has_field_ui_element: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_text_map: # Field №1
        value: (bit_field & 0b10) != 0
