types:
  config_guide_check_task_finish_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: task_id
        type: aux_types::vlq_base128_le_u
        if: has_field_task_id
    instances:
      has_field_task_id: # Field №0
        value: (bit_field & 0b1) != 0
