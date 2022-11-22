types:
  config_guide_anchor_unlock_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_id
      - id: unlock
        type: u1
        if: has_field_unlock
    instances:
      has_field_point_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_unlock: # Field №1
        value: (bit_field & 0b10) != 0
