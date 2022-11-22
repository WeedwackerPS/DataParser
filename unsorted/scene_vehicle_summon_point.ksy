types:
  scene_vehicle_summon_point:
    seq:
      - id: base
        type: config_scene_point
      - id: bit_field
        type: u1
      - id: vehicle_type
        type: enum__vehicle_type
        if: has_field_vehicle_type
      - id: vehicle_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_vehicle_gadget_id
      - id: born_point_list
        type: array_of__vector__length_u
        if: has_field_born_point_list
      - id: born_rotate_list
        type: array_of__vector__length_u
        if: has_field_born_rotate_list
      - id: vehicle_radius
        type: f4
        if: has_field_vehicle_radius
      - id: title_text_id
        type: aux_types::string
        if: has_field_title_text_id
    instances:
      has_field_vehicle_type: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_vehicle_gadget_id: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_born_point_list: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_born_rotate_list: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_vehicle_radius: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_title_text_id: # Field №5
        value: (bit_field & 0b100000) != 0
      # Base class fields
      type:
        value: base.type
      gadget_id:
        value: base.gadget_id
      area_id:
        value: base.area_id
      pos:
        value: base.pos
      rot:
        value: base.rot
      tran_pos:
        value: base.tran_pos
      tran_rot:
        value: base.tran_rot
      unlocked:
        value: base.unlocked
      alias:
        value: base.alias
      group_limit:
        value: base.group_limit
      is_model_hidden:
        value: base.is_model_hidden
