types:
  config_render_resolution:
    seq:
      - id: bit_field
        type: u1
      - id: width
        type: aux_types::vlq_base128_le_s
        if: has_field_width
      - id: height
        type: aux_types::vlq_base128_le_s
        if: has_field_height
      - id: second_width
        type: aux_types::vlq_base128_le_s
        if: has_field_second_width
      - id: second_height
        type: aux_types::vlq_base128_le_s
        if: has_field_second_height
      - id: perf_cost_ratio
        type: f4
        if: has_field_perf_cost_ratio
    instances:
      has_field_width: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_height: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_second_width: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_second_height: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_perf_cost_ratio: # Field №4
        value: (bit_field & 0b10000) != 0
