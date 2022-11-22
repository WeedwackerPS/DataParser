types:
  base_talent_config:
    seq:
      - id: bit_field
        type: u1
      - id: open_config
        type: aux_types::string
        if: has_field_open_config
      - id: add_props
        type: array_of__prop_val_config__length_u
        if: has_field_add_props
      - id: param_list
        type: array_of__f4__length_u
        if: has_field_param_list
    instances:
      has_field_open_config: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_add_props: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_param_list: # Field №2
        value: (bit_field & 0b100) != 0
