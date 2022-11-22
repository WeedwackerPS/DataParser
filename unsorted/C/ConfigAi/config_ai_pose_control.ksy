types:
  config_ai_pose_control:
    seq:
      - id: bit_field
        type: u1
      - id: items
        type: array_of__config_ai_pose_control_item__length_u
        if: has_field_items
    instances:
      has_field_items: # Field №0
        value: (bit_field & 0b1) != 0
