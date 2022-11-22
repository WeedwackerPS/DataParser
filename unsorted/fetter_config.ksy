types:
  fetter_config:
    seq:
      - id: bit_field
        type: u1
      - id: fetter_id
        type: aux_types::vlq_base128_le_u
        if: has_field_fetter_id
      - id: avatar_id
        type: aux_types::vlq_base128_le_u
        if: has_field_avatar_id
      - id: open_conds
        type: array_of__fetter_condition_config__length_u
        if: has_field_open_conds
      - id: finish_conds
        type: array_of__fetter_condition_config__length_u
        if: has_field_finish_conds
    instances:
      has_field_fetter_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_avatar_id: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_open_conds: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_finish_conds: # Field №3
        value: (bit_field & 0b1000) != 0
