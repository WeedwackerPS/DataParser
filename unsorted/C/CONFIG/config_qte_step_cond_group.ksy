types:
  config_qte_step_cond_group:
    seq:
      - id: bit_field
        type: u1
      - id: cond_comb_type
        type: enum__logic_type
        if: has_field_cond_comb_type
      - id: step_cond_list
        type: array_of__disp__config_qte_step_base_cond__length_u
        if: has_field_step_cond_list
    instances:
      has_field_cond_comb_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_step_cond_list: # Field №1
        value: (bit_field & 0b10) != 0
