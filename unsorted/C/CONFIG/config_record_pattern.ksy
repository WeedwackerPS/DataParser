types:
  config_record_pattern:
    seq:
      - id: bit_field
        type: u1
      - id: bool_list
        type: array_of__aux_types__string__length_u
        if: has_field_bool_list
      - id: int_list
        type: array_of__aux_types__string__length_u
        if: has_field_int_list
      - id: float_list
        type: array_of__aux_types__string__length_u
        if: has_field_float_list
      - id: trigger_list
        type: array_of__aux_types__string__length_u
        if: has_field_trigger_list
    instances:
      has_field_bool_list: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_int_list: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_float_list: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_trigger_list: # Field №3
        value: (bit_field & 0b1000) != 0
