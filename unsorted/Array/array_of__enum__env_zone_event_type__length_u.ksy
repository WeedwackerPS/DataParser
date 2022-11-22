types:
  array_of__enum__env_zone_event_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__env_zone_event_type
        repeat: expr
        repeat-expr: length.value
