types:
  config_action_point:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: local_id
        type: aux_types::vlq_base128_le_u
        if: has_field_local_id
      - id: type
        type: enum__action_point_type
        if: has_field_type
      - id: pos
        type: vector
        if: has_field_pos
      - id: rot
        type: vector
        if: has_field_rot
      - id: capacity
        type: aux_types::vlq_base128_le_s
        if: has_field_capacity
      - id: act_zone_inner_radius
        type: f4
        if: has_field_act_zone_inner_radius
      - id: act_zone_outer_radius
        type: f4
        if: has_field_act_zone_outer_radius
      - id: freestyle
        type: aux_types::vlq_base128_le_s
        if: has_field_freestyle
      - id: face_center
        type: u1
        if: has_field_face_center
    instances:
      has_field_local_id: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_type: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_pos: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_rot: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_capacity: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_act_zone_inner_radius: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_act_zone_outer_radius: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_freestyle: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_face_center: # Field №8
        value: (bit_field.value & 0b100000000) != 0
