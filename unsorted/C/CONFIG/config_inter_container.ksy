types:
  config_inter_container:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: lua_data_path
        type: aux_types::string
        if: has_field_lua_data_path
      - id: is_simple_talk
        type: u1
        if: has_field_is_simple_talk
      - id: dont_use_default_finish
        type: u1
        if: has_field_dont_use_default_finish
      - id: attack_mode_recover
        type: u1
        if: has_field_attack_mode_recover
      - id: pause_actor
        type: u1
        if: has_field_pause_actor
      - id: hide_pickable_entity
        type: u1
        if: has_field_hide_pickable_entity
      - id: start_black_keep_time
        type: f4
        if: has_field_start_black_keep_time
      - id: entity_ban
        type: aux_types::string
        if: has_field_entity_ban
      - id: is_key_interaction
        type: u1
        if: has_field_is_key_interaction
      - id: disable_npc_lod
        type: u1
        if: has_field_disable_npc_lod
      - id: start_fade
        type: config_inter_fade
        if: has_field_start_fade
      - id: end_fade
        type: config_inter_fade
        if: has_field_end_fade
      - id: actors
        type: array_of__config_inter_actor__length_u
        if: has_field_actors
      - id: group
        type: array_of__array_of__disp__config_base_inter_action__length_u__length_u
        if: has_field_group
      - id: group_id
        type: array_of__config_inter_grp_id__length_u
        if: has_field_group_id
      - id: free_style_dic
        type: dict_of__aux_types__vlq_base128_le_u_array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_free_style_dic
    instances:
      has_field_lua_data_path: # Field №0
        value: (bit_field.value & 000000001) != 0
      has_field_is_simple_talk: # Field №1
        value: (bit_field.value & 000000010) != 0
      has_field_dont_use_default_finish: # Field №2
        value: (bit_field.value & 000000100) != 0
      has_field_attack_mode_recover: # Field №3
        value: (bit_field.value & 000001000) != 0
      has_field_pause_actor: # Field №4
        value: (bit_field.value & 000010000) != 0
      has_field_hide_pickable_entity: # Field №5
        value: (bit_field.value & 000100000) != 0
      has_field_start_black_keep_time: # Field №6
        value: (bit_field.value & 001000000) != 0
      has_field_entity_ban: # Field №7
        value: (bit_field.value & 010000000) != 0
      has_field_is_key_interaction: # Field №8
        value: (bit_field.value & 0b0000000100000000) != 0
      has_field_disable_npc_lod: # Field №9
        value: (bit_field.value & 0b0000001000000000) != 0
      has_field_start_fade: # Field №10
        value: (bit_field.value & 0b0000010000000000) != 0
      has_field_end_fade: # Field №11
        value: (bit_field.value & 0b0000100000000000) != 0
      has_field_actors: # Field №12
        value: (bit_field.value & 0b0001000000000000) != 0
      has_field_group: # Field №13
        value: (bit_field.value & 0b0010000000000000) != 0
      has_field_group_id: # Field №14
        value: (bit_field.value & 0b0100000000000000) != 0
      has_field_free_style_dic: # Field №15
        value: (bit_field.value & 0b1000000000000000) != 0
