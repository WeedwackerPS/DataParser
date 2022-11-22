types:
  virtual_trans_point:
    seq:
      - id: base
        type: scene_trans_point
      - id: bit_field
        type: u1
      - id: mark_icon_type_name
        type: aux_types::string
        if: has_field_mark_icon_type_name
    instances:
      has_field_mark_icon_type_name: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      max_spring_volume:
        value: base.max_spring_volume
      cutscene_list:
        value: base.cutscene_list
      npc_id:
        value: base.npc_id
      is_forbid_avatar_revive:
        value: base.is_forbid_avatar_revive
      is_forbid_avatar_auto_use_spring:
        value: base.is_forbid_avatar_auto_use_spring
      map_visibility:
        value: base.map_visibility
      show_on_locked_area:
        value: base.show_on_locked_area
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
