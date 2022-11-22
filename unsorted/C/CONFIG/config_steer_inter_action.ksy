types:
  config_steer_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: steer_type
        type: enum__dialog_steer_type
        if: has_field_steer_type
      - id: use_angle
        type: u1
        if: has_field_use_angle
      - id: steer_dir
        type: vector
        if: has_field_steer_dir
      - id: steer_angle
        type: f4
        if: has_field_steer_angle
      - id: use_steer_anim
        type: u1
        if: has_field_use_steer_anim
      - id: interrupt_freestyle
        type: u1
        if: has_field_interrupt_freestyle
      - id: force_steer
        type: u1
        if: has_field_force_steer
      - id: target_npc_alias
        type: aux_types::string
        if: has_field_target_npc_alias
    instances:
      has_field_steer_type: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_use_angle: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_steer_dir: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_steer_angle: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_use_steer_anim: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_interrupt_freestyle: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_force_steer: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_target_npc_alias: # Field №7
        value: (bit_field & 0b10000000) != 0
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
