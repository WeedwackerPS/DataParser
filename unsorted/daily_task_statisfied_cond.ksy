types:
  daily_task_statisfied_cond:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__condition_type
        if: has_field_type
      - id: param1
        type: aux_types::vlq_base128_le_u
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_u
        if: has_field_param2
      - id: param3
        type: aux_types::vlq_base128_le_u
        if: has_field_param3
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_param1: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_param2: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_param3: # Field №3
        value: (bit_field & 0b1000) != 0
