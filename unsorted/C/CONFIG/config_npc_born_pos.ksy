types:
  config_npc_born_pos:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: room_id
        type: aux_types::vlq_base128_le_u
        if: has_field_room_id
      - id: pos
        type: vector
        if: has_field_pos
      - id: rot
        type: vector
        if: has_field_rot
      - id: group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_group_id
      - id: suite_id
        type: aux_types::vlq_base128_le_u
        if: has_field_suite_id
      - id: suite_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_suite_id_list
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_config_id: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_room_id: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_pos: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_rot: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_group_id: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_suite_id: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_suite_id_list: # Field №7
        value: (bit_field & 0b10000000) != 0
