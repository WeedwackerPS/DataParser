types:
  config_qte_step_base_cond:
    seq:
      - id: bit_field
        type: u1
      - id: cond_type
        type: enum__qte_step_cond_type
        if: has_field_cond_type
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field & 0b1) != 0
