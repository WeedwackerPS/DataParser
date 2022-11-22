types:
  config_inter_actor:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: config_id
        type: aux_types::vlq_base128_le_u
        if: has_field_config_id
      - id: alias
        type: aux_types::string
        if: has_field_alias
      - id: visible
        type: u1
        if: has_field_visible
      - id: born_point_name
        type: aux_types::string
        if: has_field_born_point_name
      - id: use_relative_pos
        type: u1
        if: has_field_use_relative_pos
      - id: relative_pos
        type: vector
        if: has_field_relative_pos
      - id: relative_rot
        type: vector
        if: has_field_relative_rot
      - id: quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_id
      - id: remove_actor_type
        type: enum__remove_actor_type
        if: has_field_remove_actor_type
      - id: force_create_daily
        type: u1
        if: has_field_force_create_daily
    instances:
      has_field_config_id: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_alias: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_visible: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_born_point_name: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_use_relative_pos: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_relative_pos: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_relative_rot: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_quest_id: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_remove_actor_type: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_force_create_daily: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
