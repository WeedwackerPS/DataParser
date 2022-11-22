types:
  config_qte_step_power_bar_cond:
    seq:
      - id: base
        type: config_qte_step_base_cond
      - id: bit_field
        type: u1
      - id: order_type
        type: enum__ordering_type
        if: has_field_order_type
      - id: value
        type: aux_types::vlq_base128_le_u
        if: has_field_value
    instances:
      has_field_order_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      cond_type:
        value: base.cond_type
