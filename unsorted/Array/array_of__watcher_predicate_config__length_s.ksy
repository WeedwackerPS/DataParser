types:
  array_of__watcher_predicate_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: watcher_predicate_config
        repeat: expr
        repeat-expr: length.value
