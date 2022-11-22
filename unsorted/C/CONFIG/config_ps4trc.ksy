types:
  config_ps4trc:
    seq:
      - id: bit_field
        type: u1
      - id: default_age
        type: aux_types::vlq_base128_le_s
        if: has_field_default_age
      - id: content_restriction_list
        type: array_of__config_content_restriction__length_u
        if: has_field_content_restriction_list
    instances:
      has_field_default_age: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_content_restriction_list: # Field №1
        value: (bit_field & 0b10) != 0
