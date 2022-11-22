types:
  investigation_monster_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_city_id
      - id: monster_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_monster_id_list
      - id: group_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_group_id_list
      - id: unlock_parent_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_unlock_parent_quest_id
      - id: active_unlock_quest_activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_active_unlock_quest_activity_id
      - id: reward_preview_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview_id
      - id: map_mark_create_type
        type: enum__investigation_monster_map_mark_create_type
        if: has_field_map_mark_create_type
      - id: map_mark_create_condition
        type: investigation_monster_map_mark_create_condition
        if: has_field_map_mark_create_condition
      - id: monster_category
        type: enum__monster_category
        if: has_field_monster_category
      - id: name
        type: aux_types::vlq_base128_le_u
        if: has_field_name
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: desc
        type: aux_types::vlq_base128_le_u
        if: has_field_desc
      - id: lock_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_lock_desc
      - id: occupied_quest_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_occupied_quest_id_list
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_city_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_monster_id_list: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_group_id_list: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_unlock_parent_quest_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_active_unlock_quest_activity_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_reward_preview_id: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_map_mark_create_type: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_map_mark_create_condition: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_monster_category: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_name: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_icon: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_desc: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_lock_desc: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
      has_field_occupied_quest_id_list: # Field №14
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
