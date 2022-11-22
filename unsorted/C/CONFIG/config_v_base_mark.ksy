types:
  config_v_base_mark:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__mark_view_type
        if: has_field_type
      - id: res_path
        type: aux_types::string
        if: has_field_res_path
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_res_path: # Field №1
        value: (bit_field & 0b10) != 0
