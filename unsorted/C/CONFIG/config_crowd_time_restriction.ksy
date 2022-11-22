types:
  config_crowd_time_restriction:
    seq:
      - id: bit_field
        type: u1
      - id: start_time_of_day
        type: f4
        if: has_field_start_time_of_day
      - id: end_time_of_day
        type: f4
        if: has_field_end_time_of_day
      - id: show_crowd
        type: u1
        if: has_field_show_crowd
    instances:
      has_field_start_time_of_day: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_end_time_of_day: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_show_crowd: # Field №2
        value: (bit_field & 0b100) != 0
