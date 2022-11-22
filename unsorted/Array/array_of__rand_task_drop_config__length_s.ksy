types:
  array_of__rand_task_drop_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: rand_task_drop_config
        repeat: expr
        repeat-expr: length.value
