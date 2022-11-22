types:
  config_vehicle:
    seq:
      - id: bit_field
        type: u1
      - id: vehicle_type
        type: enum__vehicle_type
        if: has_field_vehicle_type
      - id: play_mode
        type: enum__play_mode_type
        if: has_field_play_mode
      - id: camera_mode
        type: aux_types::string
        if: has_field_camera_mode
      - id: max_seat_count
        type: aux_types::vlq_base128_le_u
        if: has_field_max_seat_count
      - id: seats
        type: array_of__config_vehicle_seat__length_u
        if: has_field_seats
      - id: default_level
        type: aux_types::vlq_base128_le_u
        if: has_field_default_level
      - id: server_buff_id
        type: aux_types::vlq_base128_le_u
        if: has_field_server_buff_id
      - id: stamina
        type: config_vehicle_stamina
        if: has_field_stamina
    instances:
      has_field_vehicle_type: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_play_mode: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_camera_mode: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_max_seat_count: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_seats: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_default_level: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_server_buff_id: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_stamina: # Field №7
        value: (bit_field & 0b10000000) != 0
