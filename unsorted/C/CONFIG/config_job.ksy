types:
  config_job:
    seq:
      - id: bit_field
        type: u1
      - id: is_force_main_thread
        type: u1
        if: has_field_is_force_main_thread
      - id: schedule_job_type
        type: enum__config_schedule_job_type
        if: has_field_schedule_job_type
      - id: schedule_type
        type: enum__config_scheduler_type
        if: has_field_schedule_type
      - id: max_node_num
        type: aux_types::vlq_base128_le_s
        if: has_field_max_node_num
      - id: group_id
        type: aux_types::vlq_base128_le_s
        if: has_field_group_id
    instances:
      has_field_is_force_main_thread: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_schedule_job_type: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_schedule_type: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_max_node_num: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_group_id: # Field №4
        value: (bit_field & 0b10000) != 0
