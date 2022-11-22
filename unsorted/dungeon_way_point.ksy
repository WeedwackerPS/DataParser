types:
  dungeon_way_point:
    seq:
      - id: base
        type: config_scene_point
      - id: bit_field
        type: u1
      - id: size
        type: vector
        if: has_field_size
      - id: is_boss
        type: u1
        if: has_field_is_boss
      - id: is_active
        type: u1
        if: has_field_is_active
      - id: group_ids
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_group_ids
    instances:
      has_field_size: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_is_boss: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_is_active: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_group_ids: # Field №3
        value: (bit_field & 0b1000) != 0
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
