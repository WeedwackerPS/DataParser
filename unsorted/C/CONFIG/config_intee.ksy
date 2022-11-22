types:
  config_intee:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: use_trigger
        type: u1
        if: has_field_use_trigger
      - id: use_interaction_trigger
        type: u1
        if: has_field_use_interaction_trigger
      - id: use_push_collider
        type: u1
        if: has_field_use_push_collider
      - id: use_head_control_trigger
        type: u1
        if: has_field_use_head_control_trigger
      - id: trigger_radius
        type: f4
        if: has_field_trigger_radius
      - id: trigger_height
        type: f4
        if: has_field_trigger_height
      - id: interaction_trigger_radius
        type: f4
        if: has_field_interaction_trigger_radius
      - id: head_ctrl_radius
        type: f4
        if: has_field_head_ctrl_radius
      - id: trigger_offset
        type: vector
        if: has_field_trigger_offset
    instances:
      has_field_use_trigger: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_use_interaction_trigger: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_use_push_collider: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_use_head_control_trigger: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_trigger_radius: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_trigger_height: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_interaction_trigger_radius: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_head_ctrl_radius: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_trigger_offset: # Field №8
        value: (bit_field.value & 0b100000000) != 0
