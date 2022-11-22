types:
  config_record:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: camera_attach_point
        type: aux_types::string
        if: has_field_camera_attach_point
      - id: deactive_node_list
        type: array_of__aux_types__string__length_u
        if: has_field_deactive_node_list
      - id: actor_info_list
        type: array_of__config_record_actor_info__length_u
        if: has_field_actor_info_list
      - id: frame_list
        type: array_of__config_record_frame__length_u
        if: has_field_frame_list
      - id: target_frame_rate
        type: aux_types::vlq_base128_le_u
        if: has_field_target_frame_rate
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_camera_attach_point: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_deactive_node_list: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_actor_info_list: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_frame_list: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_target_frame_rate: # Field №5
        value: (bit_field & 0b100000) != 0
