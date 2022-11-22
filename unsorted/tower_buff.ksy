types:
  tower_buff:
    seq:
      - id: bit_field
        type: u1
      - id: tower_buff_id
        type: aux_types::vlq_base128_le_u
        if: has_field_tower_buff_id
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
    instances:
      has_field_tower_buff_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_weight: # Field №1
        value: (bit_field & 0b10) != 0
