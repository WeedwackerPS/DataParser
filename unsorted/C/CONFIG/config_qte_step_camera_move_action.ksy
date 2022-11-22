types:
  config_qte_step_camera_move_action:
    seq:
      - id: base
        type: config_qte_step_base_inter_action
      - id: bit_field
        type: u1
      - id: exit_return_back
        type: u1
        if: has_field_exit_return_back
    instances:
      has_field_exit_return_back: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      inter_action:
        value: base.inter_action
      action_type:
        value: base.action_type
      duration:
        value: base.duration
