types:
  config_point_array:
    seq:
      - id: bit_field
        type: u1
      - id: point_array_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_array_id
      - id: platform_point_list
        type: array_of__config_point__length_u
        if: has_field_platform_point_list
    instances:
      has_field_point_array_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_platform_point_list: # Field №1
        value: (bit_field & 0b10) != 0
