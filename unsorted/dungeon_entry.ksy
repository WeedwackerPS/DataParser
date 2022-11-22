types:
  dungeon_entry:
    seq:
      - id: base
        type: scene_trans_point
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: dungeon_ids
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dungeon_ids
      - id: dungeon_quest_condition_list
        type: dungeon_quest_condition
        if: has_field_dungeon_quest_condition_list
      - id: size
        type: vector
        if: has_field_size
      - id: worktop_group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_worktop_group_id
      - id: title_text_id
        type: aux_types::string
        if: has_field_title_text_id
      - id: show_level
        type: aux_types::vlq_base128_le_s
        if: has_field_show_level
      - id: dungeon_random_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dungeon_random_list
      - id: dungeon_entry_type
        type: enum__dungeon_entry_type
        if: has_field_dungeon_entry_type
      - id: forbid_simple_unlock
        type: u1
        if: has_field_forbid_simple_unlock
      - id: fire_field_event
        type: u1
        if: has_field_fire_field_event
      - id: dungeon_roster_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dungeon_roster_list
      - id: remove_entity_if_locked
        type: u1
        if: has_field_remove_entity_if_locked
    instances:
      has_field_dungeon_ids: # Field №0
        value: (bit_field.value & 00001) != 0
      has_field_dungeon_quest_condition_list: # Field №1
        value: (bit_field.value & 00010) != 0
      has_field_size: # Field №2
        value: (bit_field.value & 00100) != 0
      has_field_worktop_group_id: # Field №3
        value: (bit_field.value & 01000) != 0
      has_field_title_text_id: # Field №4
        value: (bit_field.value & 0b000000010000) != 0
      has_field_show_level: # Field №5
        value: (bit_field.value & 0b000000100000) != 0
      has_field_dungeon_random_list: # Field №6
        value: (bit_field.value & 0b000001000000) != 0
      has_field_dungeon_entry_type: # Field №7
        value: (bit_field.value & 0b000010000000) != 0
      has_field_forbid_simple_unlock: # Field №8
        value: (bit_field.value & 0b000100000000) != 0
      has_field_fire_field_event: # Field №9
        value: (bit_field.value & 0b001000000000) != 0
      has_field_dungeon_roster_list: # Field №10
        value: (bit_field.value & 0b010000000000) != 0
      has_field_remove_entity_if_locked: # Field №11
        value: (bit_field.value & 0b100000000000) != 0
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
