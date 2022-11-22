types:
  config_loading_door:
    seq:
      - id: base
        type: config_scene_point
      - id: bit_field
        type: u1
      - id: room1
        type: aux_types::vlq_base128_le_u
        if: has_field_room1
      - id: room2
        type: aux_types::vlq_base128_le_u
        if: has_field_room2
    instances:
      has_field_room1: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_room2: # Field №1
        value: (bit_field & 0b10) != 0
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
