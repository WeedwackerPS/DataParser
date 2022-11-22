types:
  config_elem_ball:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: type
        type: enum__elem_ball_trigger_type
        if: has_field_type
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: cur_max_num
        type: aux_types::vlq_base128_le_s
        if: has_field_cur_max_num
      - id: interval_times
        type: array_of__f4__length_u
        if: has_field_interval_times
      - id: drop_items
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_drop_items
      - id: drop_counts
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_drop_counts
      - id: max_num
        type: aux_types::vlq_base128_le_s
        if: has_field_max_num
      - id: poisson_disk
        type: f4
        if: has_field_poisson_disk
      - id: min_radius
        type: f4
        if: has_field_min_radius
      - id: max_radius
        type: f4
        if: has_field_max_radius
    instances:
      has_field_type: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_element_type: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_cur_max_num: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_interval_times: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_drop_items: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_drop_counts: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_max_num: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_poisson_disk: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_min_radius: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_max_radius: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
