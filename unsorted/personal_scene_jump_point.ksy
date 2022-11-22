types:
  personal_scene_jump_point:
    seq:
      - id: base
        type: config_scene_point
      - id: bit_field
        type: u1
      - id: tran_scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_tran_scene_id
      - id: title_text_id
        type: aux_types::string
        if: has_field_title_text_id
      - id: trigger_size
        type: vector
        if: has_field_trigger_size
      - id: open_time
        type: f4
        if: has_field_open_time
      - id: close_time
        type: f4
        if: has_field_close_time
      - id: is_homeworld_door
        type: u1
        if: has_field_is_homeworld_door
    instances:
      has_field_tran_scene_id: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_title_text_id: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_trigger_size: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_open_time: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_close_time: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_is_homeworld_door: # Field №5
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
