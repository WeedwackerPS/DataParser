types:
  context_action_set_text_with_main_quest_name:
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
      - id: main_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_main_quest_id
    instances:
      has_field_ui_element: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_text_map: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_main_quest_id: # Field №2
        value: (bit_field & 0b100) != 0
