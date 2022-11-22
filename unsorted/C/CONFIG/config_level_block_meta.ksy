types:
  config_level_block_meta:
    seq:
      - id: bit_field
        type: u1
      - id: block_id
        type: aux_types::vlq_base128_le_u
        if: has_field_block_id
      - id: is_ignore_block_position
        type: u1
        if: has_field_is_ignore_block_position
      - id: block_center_x
        type: aux_types::vlq_base128_le_s
        if: has_field_block_center_x
      - id: block_center_z
        type: aux_types::vlq_base128_le_s
        if: has_field_block_center_z
    instances:
      has_field_block_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_is_ignore_block_position: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_block_center_x: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_block_center_z: # Field №3
        value: (bit_field & 0b1000) != 0
