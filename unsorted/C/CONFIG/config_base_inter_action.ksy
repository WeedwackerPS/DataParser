types:
  config_base_inter_action:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__interaction_type
        if: has_field_type
      - id: delay_time
        type: f4
        if: has_field_delay_time
      - id: duration
        type: f4
        if: has_field_duration
      - id: alias_list
        type: array_of__aux_types__string__length_u
        if: has_field_alias_list
      - id: check_next_immediately
        type: u1
        if: has_field_check_next_immediately
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_delay_time: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_duration: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_alias_list: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_check_next_immediately: # Field №4
        value: (bit_field & 0b10000) != 0
