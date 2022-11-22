types:
  config_controller_subs:
    seq:
      - id: bit_field
        type: u1
      - id: path
        type: aux_types::string
        if: has_field_path
      - id: subs_name
        type: aux_types::string
        if: has_field_subs_name
      - id: state_i_ds
        type: dict_of__aux_types__string_disp__config_base_state_id_info
        if: has_field_state_i_ds
    instances:
      has_field_path: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_subs_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_state_i_ds: # Field №2
        value: (bit_field & 0b100) != 0
