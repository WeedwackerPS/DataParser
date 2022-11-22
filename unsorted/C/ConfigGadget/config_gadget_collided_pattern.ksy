types:
  config_gadget_collided_pattern:
    seq:
      - id: base
        type: config_gadget_pattern
      - id: bit_field
        type: u1
      - id: collision_actions
        type: array_of__disp__config_base_gadget_trigger_action__length_u
        if: has_field_collision_actions
      - id: this_collider_name
        type: aux_types::string
        if: has_field_this_collider_name
      - id: target_collider_name
        type: aux_types::string
        if: has_field_target_collider_name
    instances:
      has_field_collision_actions: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_this_collider_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_target_collider_name: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      collision:
        value: base.collision
