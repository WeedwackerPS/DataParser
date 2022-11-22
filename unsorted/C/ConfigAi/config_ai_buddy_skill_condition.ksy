types:
  config_ai_buddy_skill_condition:
    seq:
      - id: bit_field
        type: u1
      - id: select_range
        type: f4
        if: has_field_select_range
      - id: buddy_scoring
        type: config_ai_buddy_scoring
        if: has_field_buddy_scoring
    instances:
      has_field_select_range: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_buddy_scoring: # Field №1
        value: (bit_field & 0b10) != 0
