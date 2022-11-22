types:
  context_condition_main_quest_state:
    seq:
      - id: base
        type: context_condition
      - id: bit_field
        type: u1
      - id: main_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_main_quest_id
      - id: state
        type: enum__quest_state
        if: has_field_state
    instances:
      has_field_main_quest_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_state: # Field №1
        value: (bit_field & 0b10) != 0
