types:
  config_gadget_path:
    seq:
      - id: bit_field
        type: u1
      - id: gadget_paths
        type: dict_of__aux_types__string_array_of__aux_types__string__length_u
        if: has_field_gadget_paths
    instances:
      has_field_gadget_paths: # Field №0
        value: (bit_field & 0b1) != 0
