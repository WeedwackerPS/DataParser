types:
  context_condition_chapter_quest_state:
    seq:
      - id: base
        type: context_condition
      - id: bit_field
        type: u1
      - id: chapter_id
        type: aux_types::vlq_base128_le_u
        if: has_field_chapter_id
      - id: state
        type: enum__quest_state
        if: has_field_state
      - id: start_or_end_quest
        type: u1
        if: has_field_start_or_end_quest
    instances:
      has_field_chapter_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_state: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_start_or_end_quest: # Field №2
        value: (bit_field & 0b100) != 0
