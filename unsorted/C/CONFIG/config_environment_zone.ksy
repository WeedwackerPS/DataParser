types:
  config_environment_zone:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: area_id
        type: aux_types::vlq_base128_le_u
        if: has_field_area_id
      - id: env_type
        type: enum__environment_type
        if: has_field_env_type
      - id: point_vec
        type: array_of__point2d__length_u
        if: has_field_point_vec
      - id: bottom
        type: f4
        if: has_field_bottom
      - id: top
        type: f4
        if: has_field_top
      - id: is_use_height_range
        type: u1
        if: has_field_is_use_height_range
      - id: animal_max_num
        type: aux_types::vlq_base128_le_u
        if: has_field_animal_max_num
      - id: refresh_time
        type: aux_types::vlq_base128_le_u
        if: has_field_refresh_time
      - id: index
        type: aux_types::vlq_base128_le_u
        if: has_field_index
      - id: event_type_list
        type: array_of__enum__env_zone_event_type__length_u
        if: has_field_event_type_list
      - id: task_content_type
        type: aux_types::vlq_base128_le_u
        if: has_field_task_content_type
      - id: task_type
        type: enum__rand_task_content_type
        if: has_field_task_type
      - id: task_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_task_id_list
      - id: center
        type: point2d
        if: has_field_center
      - id: level
        type: aux_types::vlq_base128_le_u
        if: has_field_level
      - id: zone_bit_type
        type: aux_types::vlq_base128_le_u
        if: has_field_zone_bit_type
      - id: choose_possible_point
        type: u1
        if: has_field_choose_possible_point
      - id: possible_point_vec
        type: array_of__vector__length_u
        if: has_field_possible_point_vec
      - id: random_quest_entrance_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_random_quest_entrance_id_list
    instances:
      has_field_area_id: # Field №0
        value: (bit_field.value & 000000000001) != 0
      has_field_env_type: # Field №1
        value: (bit_field.value & 000000000010) != 0
      has_field_point_vec: # Field №2
        value: (bit_field.value & 000000000100) != 0
      has_field_bottom: # Field №3
        value: (bit_field.value & 000000001000) != 0
      has_field_top: # Field №4
        value: (bit_field.value & 000000010000) != 0
      has_field_is_use_height_range: # Field №5
        value: (bit_field.value & 000000100000) != 0
      has_field_animal_max_num: # Field №6
        value: (bit_field.value & 000001000000) != 0
      has_field_refresh_time: # Field №7
        value: (bit_field.value & 000010000000) != 0
      has_field_index: # Field №8
        value: (bit_field.value & 000100000000) != 0
      has_field_event_type_list: # Field №9
        value: (bit_field.value & 001000000000) != 0
      has_field_task_content_type: # Field №10
        value: (bit_field.value & 010000000000) != 0
      has_field_task_type: # Field №11
        value: (bit_field.value & 0b0000000100000000000) != 0
      has_field_task_id_list: # Field №12
        value: (bit_field.value & 0b0000001000000000000) != 0
      has_field_center: # Field №13
        value: (bit_field.value & 0b0000010000000000000) != 0
      has_field_level: # Field №14
        value: (bit_field.value & 0b0000100000000000000) != 0
      has_field_zone_bit_type: # Field №15
        value: (bit_field.value & 0b0001000000000000000) != 0
      has_field_choose_possible_point: # Field №16
        value: (bit_field.value & 0b0010000000000000000) != 0
      has_field_possible_point_vec: # Field №17
        value: (bit_field.value & 0b0100000000000000000) != 0
      has_field_random_quest_entrance_id_list: # Field №18
        value: (bit_field.value & 0b1000000000000000000) != 0
