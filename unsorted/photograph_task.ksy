types:
  photograph_task:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: task_id
        type: aux_types::vlq_base128_le_u
        if: has_field_task_id
      - id: task_type
        type: enum__photograph_task_type
        if: has_field_task_type
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: center_x
        type: f4
        if: has_field_center_x
      - id: center_y
        type: f4
        if: has_field_center_y
      - id: center_z
        type: f4
        if: has_field_center_z
      - id: radius
        type: f4
        if: has_field_radius
      - id: target_gadget_id
        type: array_of__aux_types__string__length_u
        if: has_field_target_gadget_id
      - id: start_time
        type: f4
        if: has_field_start_time
      - id: end_time
        type: f4
        if: has_field_end_time
      - id: questid
        type: aux_types::vlq_base128_le_u
        if: has_field_questid
      - id: finish_tips
        type: aux_types::vlq_base128_le_u
        if: has_field_finish_tips
      - id: start_tips
        type: aux_types::vlq_base128_le_u
        if: has_field_start_tips
    instances:
      has_field_task_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_task_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_scene_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_center_x: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_center_y: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_center_z: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_radius: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_target_gadget_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_start_time: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_end_time: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_questid: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_finish_tips: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_start_tips: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
