types:
  config_point:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_id
      - id: position
        type: vector
        if: has_field_position
      - id: rotation
        type: vector
        if: has_field_rotation
      - id: velocity
        type: f4
        if: has_field_velocity
      - id: time
        type: f4
        if: has_field_time
      - id: is_reach_event
        type: u1
        if: has_field_is_reach_event
      - id: rot_axis
        type: vector
        if: has_field_rot_axis
      - id: rot_speed
        type: f4
        if: has_field_rot_speed
      - id: arrive_range
        type: f4
        if: has_field_arrive_range
    instances:
      has_field_point_id: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_position: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_rotation: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_velocity: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_time: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_is_reach_event: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_rot_axis: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_rot_speed: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_arrive_range: # Field №8
        value: (bit_field.value & 0b100000000) != 0
