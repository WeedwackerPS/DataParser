types:
  config_qte_step_base_inter_action:
    seq:
      - id: base
        type: config_qte_step_base_action
      - id: bit_field
        type: u1
      - id: inter_action
        type: disp__config_base_inter_action
        if: has_field_inter_action
    instances:
      has_field_inter_action: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      action_type:
        value: base.action_type
      duration:
        value: base.duration
