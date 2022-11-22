types:
  config_record_emo_func:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__emo_record_type_enum
        if: has_field_type
      - id: record_bool
        type: u1
        if: has_field_record_bool
      - id: record_float
        type: f4
        if: has_field_record_float
      - id: string_arrays
        type: array_of__aux_types__string__length_u
        if: has_field_string_arrays
      - id: ulongs
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_ulongs
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_record_bool: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_record_float: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_string_arrays: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_ulongs: # Field №4
        value: (bit_field & 0b10000) != 0
