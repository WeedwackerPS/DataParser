types:
  config_ability_frame_data:
    seq:
      - id: bit_field
        type: u1
      - id: frame
        type: aux_types::vlq_base128_le_s
        if: has_field_frame
      - id: time
        type: f4
        if: has_field_time
      - id: data
        type: array_of__config_ability_node__length_u
        if: has_field_data
    instances:
      has_field_frame: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_data: # Field №2
        value: (bit_field & 0b100) != 0
