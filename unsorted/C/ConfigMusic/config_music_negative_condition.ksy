types:
  config_music_negative_condition:
    seq:
      - id: base
        type: config_music_condition
      - id: bit_field
        type: u1
      - id: inner_id
        type: aux_types::vlq_base128_le_s
        if: has_field_inner_id
    instances:
      has_field_inner_id: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      id:
        value: base.id
