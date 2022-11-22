types:
  config_homeworld_furniture_unit:
    seq:
      - id: bit_field
        type: u1
      - id: furniture_id
        type: aux_types::vlq_base128_le_u
        if: has_field_furniture_id
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
      - id: parent_index
        type: aux_types::vlq_base128_le_s
        if: has_field_parent_index
    instances:
      has_field_furniture_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_position: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_rotation: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_parent_index: # Field №3
        value: (bit_field & 0b1000) != 0
