types:
  config_guide_avatar_change_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
    instances:
      has_field_config_id: # Field №0
        value: (bit_field & 0b1) != 0
