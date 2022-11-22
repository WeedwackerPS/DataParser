types:
  config_vehicle_seat:
    seq:
      - id: bit_field
        type: u1
      - id: attach_to
        type: aux_types::string
        if: has_field_attach_to
      - id: option_id
        type: aux_types::vlq_base128_le_u
        if: has_field_option_id
      - id: rotate
        type: vector
        if: has_field_rotate
      - id: off_vehicle_up_dist
        type: f4
        if: has_field_off_vehicle_up_dist
    instances:
      has_field_attach_to: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_option_id: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_rotate: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_off_vehicle_up_dist: # Field №3
        value: (bit_field & 0b1000) != 0
