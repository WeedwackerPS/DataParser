types:
  config_gear:
    seq:
      - id: bit_field
        type: u1
      - id: gear_type
        type: enum__gear_type
        if: has_field_gear_type
      - id: start_elem_type
        type: enum__element_type
        if: has_field_start_elem_type
      - id: start_value
        type: aux_types::vlq_base128_le_u
        if: has_field_start_value
      - id: start_last_time
        type: aux_types::vlq_base128_le_u
        if: has_field_start_last_time
      - id: stop_elem_type
        type: enum__element_type
        if: has_field_stop_elem_type
      - id: stop_value
        type: aux_types::vlq_base128_le_u
        if: has_field_stop_value
      - id: stop_last_time
        type: aux_types::vlq_base128_le_u
        if: has_field_stop_last_time
    instances:
      has_field_gear_type: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_start_elem_type: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_start_value: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_start_last_time: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_stop_elem_type: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_stop_value: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_stop_last_time: # Field №6
        value: (bit_field & 0b1000000) != 0
