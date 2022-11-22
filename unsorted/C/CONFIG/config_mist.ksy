types:
  config_mist:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: hide_scene_point_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_hide_scene_point_list
      - id: sort_id
        type: aux_types::vlq_base128_le_u
        if: has_field_sort_id
      - id: prefab_path
        type: aux_types::string
        if: has_field_prefab_path
      - id: map_pos_list
        type: array_of__point2d__length_u
        if: has_field_map_pos_list
      - id: need_anim
        type: u1
        if: has_field_need_anim
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_hide_scene_point_list: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_sort_id: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_prefab_path: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_map_pos_list: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_need_anim: # Field №5
        value: (bit_field & 0b100000) != 0
