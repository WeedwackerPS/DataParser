types:
  activity_hide_and_seek_basic_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: title
        type: aux_types::vlq_base128_le_u
        if: has_field_title
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: push_tips_id
        type: aux_types::vlq_base128_le_u
        if: has_field_push_tips_id
      - id: reward_preview_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview_id
      - id: one_time_reward_preview_id
        type: aux_types::vlq_base128_le_u
        if: has_field_one_time_reward_preview_id
      - id: unlock_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_unlock_quest_id
      - id: match_id
        type: aux_types::vlq_base128_le_u
        if: has_field_match_id
      - id: draft_id
        type: aux_types::vlq_base128_le_u
        if: has_field_draft_id
      - id: score_unlock_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_score_unlock_list
      - id: watcher_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_watcher_list
      - id: skill_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_skill_list
      - id: map_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_map_list
      - id: chanllenge_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_chanllenge_list
      - id: score_item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_score_item_id
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_activity_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_title: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_desc: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_push_tips_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_reward_preview_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_one_time_reward_preview_id: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_unlock_quest_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_match_id: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_draft_id: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_score_unlock_list: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_watcher_list: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_skill_list: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_map_list: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
      has_field_chanllenge_list: # Field №14
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
      has_field_score_item_id: # Field №15
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
