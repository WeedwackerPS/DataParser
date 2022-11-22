types:
  combine_unlock_config:
    seq:
      - id: bit_field
        type: u1
      - id: unlock_method
        type: enum__combine_unlock_method
        if: has_field_unlock_method
      - id: unlock_param
        type: array_of__aux_types__string__length_u
        if: has_field_unlock_param
    instances:
      has_field_unlock_method: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_unlock_param: # Field №1
        value: (bit_field & 0b10) != 0
