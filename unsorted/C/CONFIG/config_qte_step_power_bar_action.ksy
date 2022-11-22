types:
  config_qte_step_power_bar_action:
    seq:
      - id: base
        type: config_qte_step_base_action
      - id: bit_field
        type: u1
      - id: change_value
        type: aux_types::vlq_base128_le_s
        if: has_field_change_value
    instances:
      has_field_change_value: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      action_type:
        value: base.action_type
      duration:
        value: base.duration
