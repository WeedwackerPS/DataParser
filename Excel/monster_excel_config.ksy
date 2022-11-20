meta:
  id: monster_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__monster_security_level
    - ../EnumType/enum__monster_type
    - ../EnumType/enum__vision_level_type
    - Common/array_of__fight_prop_grow_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: monster_name
    type: aux_types::string
    if: has_field_monster_name
  - id: type
    type: enum__monster_type
    if: has_field_type
  - id: security_level
    type: enum__monster_security_level
    if: has_field_security_level
  - id: script_data_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_script_data_path_hash
  - id: script_data_path_hash_pre
    type: s1
    if: has_field_script_data_path_hash
  - id: server_script
    type: aux_types::string
    if: has_field_server_script
  - id: combat_config_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_combat_config_hash
  - id: combat_config_hash_pre
    type: s1
    if: has_field_combat_config_hash
  - id: affix
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_affix
  - id: ai
    type: aux_types::string
    if: has_field_ai
  - id: is_ai_hash_check
    type: u1
    if: has_field_is_ai_hash_check
  - id: equips
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_equips
  - id: can_swim
    type: u1
    if: has_field_can_swim
  - id: hp_drops
    type: array_of__monster_drop__length_s
    if: has_field_hp_drops
  - id: kill_drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_kill_drop_id
  - id: is_scene_reward
    type: u1
    if: has_field_is_scene_reward
  - id: vision_level
    type: enum__vision_level_type
    if: has_field_vision_level
  - id: is_invisible_reset
    type: u1
    if: has_field_is_invisible_reset
  - id: exclude_weathers
    type: aux_types::string
    if: has_field_exclude_weathers
  - id: feature_tag_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_feature_tag_group_id
  - id: mp_prop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_prop_id
  - id: skin
    type: aux_types::string
    if: has_field_skin
  - id: describe_id
    type: aux_types::vlq_base128_le_u
    if: has_field_describe_id
  - id: safety_check
    type: u1
    if: has_field_safety_check
  - id: combat_bgm_level
    type: aux_types::vlq_base128_le_s
    if: has_field_combat_bgm_level
  - id: entity_budget_level
    type: aux_types::vlq_base128_le_s
    if: has_field_entity_budget_level
  - id: hp_base
    type: f4
    if: has_field_hp_base
  - id: attack_base
    type: f4
    if: has_field_attack_base
  - id: defense_base
    type: f4
    if: has_field_defense_base
  - id: critical
    type: f4
    if: has_field_critical
  - id: anti_critical
    type: f4
    if: has_field_anti_critical
  - id: critical_hurt
    type: f4
    if: has_field_critical_hurt
  - id: fire_sub_hurt
    type: f4
    if: has_field_fire_sub_hurt
  - id: grass_sub_hurt
    type: f4
    if: has_field_grass_sub_hurt
  - id: water_sub_hurt
    type: f4
    if: has_field_water_sub_hurt
  - id: elec_sub_hurt
    type: f4
    if: has_field_elec_sub_hurt
  - id: wind_sub_hurt
    type: f4
    if: has_field_wind_sub_hurt
  - id: ice_sub_hurt
    type: f4
    if: has_field_ice_sub_hurt
  - id: rock_sub_hurt
    type: f4
    if: has_field_rock_sub_hurt
  - id: fire_add_hurt
    type: f4
    if: has_field_fire_add_hurt
  - id: grass_add_hurt
    type: f4
    if: has_field_grass_add_hurt
  - id: water_add_hurt
    type: f4
    if: has_field_water_add_hurt
  - id: elec_add_hurt
    type: f4
    if: has_field_elec_add_hurt
  - id: wind_add_hurt
    type: f4
    if: has_field_wind_add_hurt
  - id: ice_add_hurt
    type: f4
    if: has_field_ice_add_hurt
  - id: rock_add_hurt
    type: f4
    if: has_field_rock_add_hurt
  - id: prop_grow_curves
    type: array_of__fight_prop_grow_config__length_s
    if: has_field_prop_grow_curves
  - id: element_mastery
    type: f4
    if: has_field_element_mastery
  - id: physical_sub_hurt
    type: f4
    if: has_field_physical_sub_hurt
  - id: physical_add_hurt
    type: f4
    if: has_field_physical_add_hurt
  - id: prefab_path_ragdoll_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_prefab_path_ragdoll_hash
  - id: prefab_path_ragdoll_hash_pre
    type: s1
    if: has_field_prefab_path_ragdoll_hash
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: prefab_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_prefab_path_hash
  - id: prefab_path_hash_pre
    type: s1
    if: has_field_prefab_path_hash
  - id: prefab_path_remote_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_prefab_path_remote_hash
  - id: prefab_path_remote_hash_pre
    type: s1
    if: has_field_prefab_path_remote_hash
  - id: controller_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_controller_path_hash
  - id: controller_path_hash_pre
    type: s1
    if: has_field_controller_path_hash
  - id: controller_path_remote_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_controller_path_remote_hash
  - id: controller_path_remote_hash_pre
    type: s1
    if: has_field_controller_path_remote_hash
  - id: camp_id
    type: aux_types::vlq_base128_le_u
    if: has_field_camp_id
  - id: lod_pattern_name
    type: aux_types::string
    if: has_field_lod_pattern_name
instances:
  has_field_monster_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_security_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_script_data_path_hash: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_server_script: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_combat_config_hash: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_affix: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_ai: # Field №7
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_is_ai_hash_check: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_equips: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_can_swim: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_hp_drops: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_kill_drop_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_is_scene_reward: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_vision_level: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_is_invisible_reset: # Field №15
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_exclude_weathers: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_feature_tag_group_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_mp_prop_id: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_skin: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_describe_id: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_safety_check: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_combat_bgm_level: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_entity_budget_level: # Field №23
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_hp_base: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_attack_base: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
  has_field_defense_base: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00001000) != 0)
  has_field_critical: # Field №27
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00010000) != 0)
  has_field_anti_critical: # Field №28
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00100000) != 0)
  has_field_critical_hurt: # Field №29
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b01000000) != 0)
  has_field_fire_sub_hurt: # Field №30
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b10000000) != 0)
  has_field_grass_sub_hurt: # Field №31
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000001) != 0)
  has_field_water_sub_hurt: # Field №32
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000010) != 0)
  has_field_elec_sub_hurt: # Field №33
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000100) != 0)
  has_field_wind_sub_hurt: # Field №34
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00001000) != 0)
  has_field_ice_sub_hurt: # Field №35
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00010000) != 0)
  has_field_rock_sub_hurt: # Field №36
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00100000) != 0)
  has_field_fire_add_hurt: # Field №37
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b01000000) != 0)
  has_field_grass_add_hurt: # Field №38
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b10000000) != 0)
  has_field_water_add_hurt: # Field №39
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00000001) != 0)
  has_field_elec_add_hurt: # Field №40
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00000010) != 0)
  has_field_wind_add_hurt: # Field №41
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00000100) != 0)
  has_field_ice_add_hurt: # Field №42
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00001000) != 0)
  has_field_rock_add_hurt: # Field №43
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00010000) != 0)
  has_field_prop_grow_curves: # Field №44
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b00100000) != 0)
  has_field_element_mastery: # Field №45
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b01000000) != 0)
  has_field_physical_sub_hurt: # Field №46
    value: (bit_field.length.value >= 6) and ((bit_field.bitfield[5] & 0b10000000) != 0)
  has_field_physical_add_hurt: # Field №47
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b00000001) != 0)
  has_field_prefab_path_ragdoll_hash: # Field №48
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b00000010) != 0)
  has_field_id: # Field №49
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b00000100) != 0)
  has_field_name: # Field №50
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b00001000) != 0)
  has_field_prefab_path_hash: # Field №51
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b00010000) != 0)
  has_field_prefab_path_remote_hash: # Field №52
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b00100000) != 0)
  has_field_controller_path_hash: # Field №53
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b01000000) != 0)
  has_field_controller_path_remote_hash: # Field №54
    value: (bit_field.length.value >= 7) and ((bit_field.bitfield[6] & 0b10000000) != 0)
  has_field_camp_id: # Field №55
    value: (bit_field.length.value >= 8) and ((bit_field.bitfield[7] & 0b00000001) != 0)
  has_field_lod_pattern_name: # Field №56
    value: (bit_field.length.value >= 8) and ((bit_field.bitfield[7] & 0b00000010) != 0)
types:
  array_of__monster_drop__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: monster_drop
        repeat: expr
        repeat-expr: length.value
  monster_drop:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: drop_id
        type: aux_types::vlq_base128_le_u
        if: has_field_drop_id
      - id: hp_percent
        type: f4
        if: has_field_hp_percent
    instances:
      has_field_drop_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_hp_percent: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
