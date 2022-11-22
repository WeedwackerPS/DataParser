types:
  config_look_at_eye_ctrl_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: clear_all
        type: u1
        if: has_field_clear_all
      - id: use_target_pos
        type: u1
        if: has_field_use_target_pos
      - id: target_position
        type: vector
        if: has_field_target_position
      - id: eye_rotate_vec_left
        type: vector
        if: has_field_eye_rotate_vec_left
      - id: eye_rotate_vec_right
        type: vector
        if: has_field_eye_rotate_vec_right
      - id: eye_scale_x
        type: f4
        if: has_field_eye_scale_x
      - id: eye_scale_z
        type: f4
        if: has_field_eye_scale_z
      - id: turn_time
        type: f4
        if: has_field_turn_time
      - id: target_npc_alias
        type: aux_types::string
        if: has_field_target_npc_alias
      - id: target_point
        type: aux_types::string
        if: has_field_target_point
    instances:
      has_field_clear_all: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_use_target_pos: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_target_position: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_eye_rotate_vec_left: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_eye_rotate_vec_right: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_eye_scale_x: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_eye_scale_z: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_turn_time: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_target_npc_alias: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_target_point: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
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
