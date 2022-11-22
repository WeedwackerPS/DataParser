types:
  config_guide_check_quest_state_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_id
      - id: quest_state
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_state
      - id: is_equal
        type: u1
        if: has_field_is_equal
    instances:
      has_field_quest_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_quest_state: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_is_equal: # Field №2
        value: (bit_field & 0b100) != 0
