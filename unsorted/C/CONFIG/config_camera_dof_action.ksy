types:
  config_camera_dof_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: enabled
        type: u1
        if: has_field_enabled
      - id: focus_distance
        type: f4
        if: has_field_focus_distance
      - id: focus_range
        type: f4
        if: has_field_focus_range
      - id: near_focal_distance
        type: f4
        if: has_field_near_focal_distance
      - id: near_focal_trans_distance
        type: f4
        if: has_field_near_focal_trans_distance
      - id: dof_blur_amount
        type: f4
        if: has_field_dof_blur_amount
      - id: quality
        type: aux_types::vlq_base128_le_u
        if: has_field_quality
    instances:
      has_field_enabled: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_focus_distance: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_focus_range: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_near_focal_distance: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_near_focal_trans_distance: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_dof_blur_amount: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_quality: # Field №6
        value: (bit_field & 0b1000000) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
