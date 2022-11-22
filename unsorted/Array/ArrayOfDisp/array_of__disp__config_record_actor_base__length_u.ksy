types:
  array_of__disp__config_record_actor_base__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: disp__config_record_actor_base
        repeat: expr
        repeat-expr: length.value
