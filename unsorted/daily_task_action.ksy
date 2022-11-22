types:
  daily_task_action:
    seq:
      - id: bit_field
        type: u1
      - id: cond_type
        type: enum__daily_task_cond_type
        if: has_field_cond_type
      - id: cond_param1
        type: aux_types::vlq_base128_le_s
        if: has_field_cond_param1
      - id: cond_param2
        type: aux_types::vlq_base128_le_s
        if: has_field_cond_param2
      - id: cond_param3
        type: aux_types::vlq_base128_le_s
        if: has_field_cond_param3
      - id: type
        type: enum__daily_task_action_type
        if: has_field_type
      - id: param1
        type: aux_types::vlq_base128_le_s
        if: has_field_param1
      - id: param2
        type: aux_types::vlq_base128_le_s
        if: has_field_param2
      - id: param3
        type: aux_types::vlq_base128_le_s
        if: has_field_param3
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_cond_param1: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_cond_param2: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_cond_param3: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_type: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_param1: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_param2: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_param3: # Field №7
        value: (bit_field & 0b10000000) != 0
