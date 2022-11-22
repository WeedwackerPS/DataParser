types:
  config_l_base_mark:
    seq:
      - id: bit_field
        type: u1
      - id: priority
        type: aux_types::vlq_base128_le_s
        if: has_field_priority
      - id: views
        type: array_of__disp__config_v_base_mark__length_u
        if: has_field_views
    instances:
      has_field_priority: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_views: # Field №1
        value: (bit_field & 0b10) != 0
