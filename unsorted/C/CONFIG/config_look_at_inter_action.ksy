types:
  config_look_at_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: enable_head
        type: u1
        if: has_field_enable_head
      - id: use_target_pos
        type: u1
        if: has_field_use_target_pos
      - id: enable_absolute
        type: u1
        if: has_field_enable_absolute
      - id: target_offset
        type: vector
        if: has_field_target_offset
      - id: target_position
        type: vector
        if: has_field_target_position
      - id: head_rotate_vec
        type: vector
        if: has_field_head_rotate_vec
      - id: enable_body
        type: u1
        if: has_field_enable_body
      - id: body_angle
        type: f4
        if: has_field_body_angle
      - id: head_turn_time
        type: f4
        if: has_field_head_turn_time
      - id: body_turn_time
        type: f4
        if: has_field_body_turn_time
      - id: target_npc_alias
        type: aux_types::string
        if: has_field_target_npc_alias
      - id: look_at_target_type
        type: enum__look_at_target_type
        if: has_field_look_at_target_type
    instances:
      has_field_enable_head: # Field №0
        value: (bit_field.value & 00001) != 0
      has_field_use_target_pos: # Field №1
        value: (bit_field.value & 00010) != 0
      has_field_enable_absolute: # Field №2
        value: (bit_field.value & 00100) != 0
      has_field_target_offset: # Field №3
        value: (bit_field.value & 01000) != 0
      has_field_target_position: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_head_rotate_vec: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_enable_body: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_body_angle: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_head_turn_time: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_body_turn_time: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_target_npc_alias: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_look_at_target_type: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
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
