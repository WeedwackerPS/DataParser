types:
  config_move_disable_collision:
    seq:
      - id: bit_field
        type: u1
      - id: self_colliders
        type: array_of__config_entity_collider__length_u
        if: has_field_self_colliders
      - id: delay_enable_time
        type: f4
        if: has_field_delay_enable_time
    instances:
      has_field_self_colliders: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_delay_enable_time: # Field №1
        value: (bit_field & 0b10) != 0
