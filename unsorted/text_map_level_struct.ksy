types:
  text_map_level_struct:
    seq:
      - id: bit_field
        type: u1
      - id: min_file_num
        type: aux_types::vlq_base128_le_s
        if: has_field_min_file_num
      - id: max_file_num
        type: aux_types::vlq_base128_le_s
        if: has_field_max_file_num
      - id: auto_change_step
        type: aux_types::vlq_base128_le_s
        if: has_field_auto_change_step
    instances:
      has_field_min_file_num: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_max_file_num: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_auto_change_step: # Field №2
        value: (bit_field & 0b100) != 0
