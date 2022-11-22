types:
  config_camera_shake_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: shake_range
        type: f4
        if: has_field_shake_range
      - id: shake_time
        type: f4
        if: has_field_shake_time
      - id: shake_dinstance
        type: f4
        if: has_field_shake_dinstance
      - id: shake_dir
        type: vector
        if: has_field_shake_dir
    instances:
      has_field_shake_range: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_shake_time: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_shake_dinstance: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_shake_dir: # Field №3
        value: (bit_field & 0b1000) != 0
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
