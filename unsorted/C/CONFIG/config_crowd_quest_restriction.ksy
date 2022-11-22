types:
  config_crowd_quest_restriction:
    seq:
      - id: bit_field
        type: u1
      - id: quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_id
      - id: quest_accepted
        type: u1
        if: has_field_quest_accepted
      - id: quest_states
        type: array_of__enum__quest_state__length_u
        if: has_field_quest_states
    instances:
      has_field_quest_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_quest_accepted: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_quest_states: # Field №2
        value: (bit_field & 0b100) != 0
