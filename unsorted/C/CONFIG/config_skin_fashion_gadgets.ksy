types:
  config_skin_fashion_gadgets:
    seq:
      - id: bit_field
        type: u1
      - id: old_gadgets
        type: array_of__aux_types__string__length_u
        if: has_field_old_gadgets
      - id: new_gadgets
        type: array_of__aux_types__string__length_u
        if: has_field_new_gadgets
    instances:
      has_field_old_gadgets: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_new_gadgets: # Field №1
        value: (bit_field & 0b10) != 0
