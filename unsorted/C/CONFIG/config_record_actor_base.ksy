types:
  config_record_actor_base:
    seq:
      - id: bit_field
        type: u1
      - id: pos
        type: vector
        if: has_field_pos
      - id: rot
        type: vector
        if: has_field_rot
      - id: scale
        type: vector
        if: has_field_scale
      - id: serial_id
        type: aux_types::vlq_base128_le_u
        if: has_field_serial_id
    instances:
      has_field_pos: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_rot: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_scale: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_serial_id: # Field №3
        value: (bit_field & 0b1000) != 0
