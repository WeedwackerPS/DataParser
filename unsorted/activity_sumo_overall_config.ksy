types:
  activity_sumo_overall_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: prerequisite_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_prerequisite_quest_id
      - id: lead_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_lead_quest_id
      - id: reward_preview_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview_id
      - id: dungeon_entry_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dungeon_entry_id
      - id: global_watcher_id
        type: aux_types::vlq_base128_le_u
        if: has_field_global_watcher_id
      - id: push_tips_id
        type: aux_types::vlq_base128_le_u
        if: has_field_push_tips_id
      - id: team_num
        type: aux_types::vlq_base128_le_u
        if: has_field_team_num
      - id: max_team_member_num
        type: aux_types::vlq_base128_le_u
        if: has_field_max_team_member_num
      - id: team_selectable_skill_num
        type: aux_types::vlq_base128_le_u
        if: has_field_team_selectable_skill_num
      - id: switch_team_cd
        type: aux_types::vlq_base128_le_u
        if: has_field_switch_team_cd
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_activity_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_prerequisite_quest_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_lead_quest_id: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_reward_preview_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_dungeon_entry_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_global_watcher_id: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_push_tips_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_team_num: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_max_team_member_num: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_team_selectable_skill_num: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_switch_team_cd: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
