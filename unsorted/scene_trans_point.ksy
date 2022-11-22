types:
  scene_trans_point:
    seq:
      - id: base
        type: config_scene_point
      - id: bit_field
        type: u1
      - id: max_spring_volume
        type: aux_types::vlq_base128_le_u
        if: has_field_max_spring_volume
      - id: cutscene_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_cutscene_list
      - id: npc_id
        type: aux_types::vlq_base128_le_u
        if: has_field_npc_id
      - id: is_forbid_avatar_revive
        type: u1
        if: has_field_is_forbid_avatar_revive
      - id: is_forbid_avatar_auto_use_spring
        type: u1
        if: has_field_is_forbid_avatar_auto_use_spring
      - id: map_visibility
        type: enum__point_map_visibility
        if: has_field_map_visibility
      - id: show_on_locked_area
        type: u1
        if: has_field_show_on_locked_area
    instances:
      has_field_max_spring_volume: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_cutscene_list: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_npc_id: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_is_forbid_avatar_revive: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_is_forbid_avatar_auto_use_spring: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_map_visibility: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_show_on_locked_area: # Field №6
        value: (bit_field & 0b1000000) != 0
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
