types:
  watcher_config:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: trigger_config
        type: watcher_trigger_config
        if: has_field_trigger_config
      - id: progress
        type: aux_types::vlq_base128_le_u
        if: has_field_progress
      - id: is_disuse
        type: u1
        if: has_field_is_disuse
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_trigger_config: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_progress: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_is_disuse: # Field №3
        value: (bit_field & 0b1000) != 0
