types:
  sectr_sector:
    seq:
      - id: bit_field
        type: u1
      - id: layer_groups
        type: array_of__sectr_layer_group__length_u
        if: has_field_layer_groups
      - id: sector_name_hash
        type: aux_types::vlq_base128_le_u
        if: has_field_sector_name_hash
      - id: type
        type: enum__sectr_sector_type
        if: has_field_type
      - id: width_index
        type: aux_types::vlq_base128_le_s
        if: has_field_width_index
      - id: height_index
        type: aux_types::vlq_base128_le_s
        if: has_field_height_index
      - id: distance_to_change
        type: f4
        if: has_field_distance_to_change
      - id: center_pos
        type: vector
        if: has_field_center_pos
    instances:
      has_field_layer_groups: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_sector_name_hash: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_type: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_width_index: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_height_index: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_distance_to_change: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_center_pos: # Field №6
        value: (bit_field & 0b1000000) != 0
