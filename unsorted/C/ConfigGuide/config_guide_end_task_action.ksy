types:
  config_guide_end_task_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: task_name
        type: aux_types::string
        if: has_field_task_name
    instances:
      has_field_task_name: # Field №0
        value: (bit_field & 0b1) != 0
