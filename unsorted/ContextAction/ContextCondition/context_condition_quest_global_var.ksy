types:
  context_condition_quest_global_var:
    seq:
      - id: base
        type: context_condition
      - id: bit_field
        type: u1
      - id: quest_global_var_id
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_global_var_id
      - id: value
        type: aux_types::vlq_base128_le_s
        if: has_field_value
    instances:
      has_field_quest_global_var_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
