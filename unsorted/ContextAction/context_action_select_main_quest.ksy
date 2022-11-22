types:
  context_action_select_main_quest:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: main_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_main_quest_id
    instances:
      has_field_main_quest_id: # Field №0
        value: (bit_field & 0b1) != 0
