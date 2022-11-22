types:
  open_state_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: default_state
        type: u1
        if: has_field_default_state
      - id: allow_client_open
        type: u1
        if: has_field_allow_client_open
      - id: cond
        type: array_of__open_state_cond__length_s
        if: has_field_cond
      - id: system_open_ui_id
        type: aux_types::vlq_base128_le_u
        if: has_field_system_open_ui_id
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_default_state: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_allow_client_open: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_cond: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_system_open_ui_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
