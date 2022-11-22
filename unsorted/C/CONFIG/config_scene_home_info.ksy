types:
  config_scene_home_info:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: block_arrangement_info_list
        type: array_of__config_home_block__length_u
        if: has_field_block_arrangement_info_list
      - id: is_set_born_pos
        type: u1
        if: has_field_is_set_born_pos
      - id: born_pos
        type: vector
        if: has_field_born_pos
      - id: born_rot
        type: vector
        if: has_field_born_rot
      - id: door_list
        type: array_of__config_home_furniture__length_u
        if: has_field_door_list
      - id: stair_list
        type: array_of__config_home_furniture__length_u
        if: has_field_stair_list
      - id: main_house
        type: config_home_furniture
        if: has_field_main_house
      - id: djinn_pos
        type: vector
        if: has_field_djinn_pos
      - id: tmp_version
        type: aux_types::vlq_base128_le_u
        if: has_field_tmp_version
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_block_arrangement_info_list: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_is_set_born_pos: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_born_pos: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_born_rot: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_door_list: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_stair_list: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_main_house: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_djinn_pos: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_tmp_version: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
