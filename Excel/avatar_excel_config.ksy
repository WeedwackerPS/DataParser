meta:
  id: avatar_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - Common/array_of__fight_prop_grow_config__length_s
    - ../EnumType/enum__avatar_identity_type
    - ../EnumType/enum__avatar_use_type
    - ../EnumType/enum__body_type
    - ../EnumType/enum__quality_type
    - ../EnumType/enum__weapon_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: use_type
    type: enum__avatar_use_type
    if: has_field_use_type
  - id: body_type
    type: enum__body_type
    if: has_field_body_type
  - id: script_data_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_script_data_path_hash
  - id: script_data_path_hash_pre
    type: s1
    if: has_field_script_data_path_hash
  - id: icon_name
    type: aux_types::string
    if: has_field_icon_name
  - id: side_icon_name
    type: aux_types::string
    if: has_field_side_icon_name
  - id: quality_type
    type: enum__quality_type
    if: has_field_quality_type
  - id: charge_efficiency
    type: f4
    if: has_field_charge_efficiency
  - id: heal_add
    type: f4
    if: has_field_heal_add
  - id: healed_add
    type: f4
    if: has_field_healed_add
  - id: combat_config_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_combat_config_hash
  - id: combat_config_hash_pre
    type: s1
    if: has_field_combat_config_hash
  - id: is_range_attack
    type: u1
    if: has_field_is_range_attack
  - id: initial_weapon
    type: aux_types::vlq_base128_le_u
    if: has_field_initial_weapon
  - id: weapon_type
    type: enum__weapon_type
    if: has_field_weapon_type
  - id: manekin_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_manekin_path_hash
  - id: manekin_path_hash_pre
    type: s1
    if: has_field_manekin_path_hash
  - id: image_name
    type: aux_types::string
    if: has_field_image_name
  - id: gacha_card_name_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_gacha_card_name_hash
  - id: gacha_card_name_hash_pre
    type: s1
    if: has_field_gacha_card_name_hash
  - id: gacha_image_name_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_gacha_image_name_hash
  - id: gacha_image_name_hash_pre
    type: s1
    if: has_field_gacha_image_name_hash
  - id: coop_pic_name_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_coop_pic_name_hash
  - id: coop_pic_name_hash_pre
    type: s1
    if: has_field_coop_pic_name_hash
  - id: cutscene_show
    type: aux_types::string
    if: has_field_cutscene_show
  - id: skill_depot_id
    type: aux_types::vlq_base128_le_u
    if: has_field_skill_depot_id
  - id: stamina_recover_speed
    type: f4
    if: has_field_stamina_recover_speed
  - id: cand_skill_depot_ids
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cand_skill_depot_ids
  - id: manekin_json_config_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_manekin_json_config_hash
  - id: manekin_json_config_hash_pre
    type: s1
    if: has_field_manekin_json_config_hash
  - id: manekin_motion_config
    type: aux_types::vlq_base128_le_u
    if: has_field_manekin_motion_config
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: avatar_identity_type
    type: enum__avatar_identity_type
    if: has_field_avatar_identity_type
  - id: avatar_promote_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_promote_id
  - id: avatar_promote_reward_level_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_avatar_promote_reward_level_list
  - id: avatar_promote_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_avatar_promote_reward_id_list
  - id: feature_tag_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_feature_tag_group_id
  - id: info_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_info_desc
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
  has_field_use_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_body_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_script_data_path_hash: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_icon_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_side_icon_name: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_quality_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_charge_efficiency: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_heal_add: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_healed_add: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_combat_config_hash: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_range_attack: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_initial_weapon: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_weapon_type: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_manekin_path_hash: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_image_name: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_gacha_card_name_hash: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_gacha_image_name_hash: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_coop_pic_name_hash: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_cutscene_show: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_skill_depot_id: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_stamina_recover_speed: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_cand_skill_depot_ids: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_manekin_json_config_hash: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_manekin_motion_config: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_desc: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_avatar_identity_type: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
  has_field_avatar_promote_id: # Field №26
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000100) != 0)
  has_field_avatar_promote_reward_level_list: # Field №27
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00001000) != 0)
  has_field_avatar_promote_reward_id_list: # Field №28
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00010000) != 0)
  has_field_feature_tag_group_id: # Field №29
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00100000) != 0)
  has_field_info_desc: # Field №30
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b01000000) != 0)
  has_field_hp_base: # Field №31
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b10000000) != 0)
  has_field_attack_base: # Field №32
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00000001) != 0)
  has_field_defense_base: # Field №33
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00000010) != 0)
  has_field_critical: # Field №34
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00000100) != 0)
  has_field_anti_critical: # Field №35
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00001000) != 0)
  has_field_critical_hurt: # Field №36
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00010000) != 0)
  has_field_fire_sub_hurt: # Field №37
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00100000) != 0)
  has_field_grass_sub_hurt: # Field №38
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b01000000) != 0)
  has_field_water_sub_hurt: # Field №39
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b10000000) != 0)
  has_field_elec_sub_hurt: # Field №40
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b00000001) != 0)
  has_field_wind_sub_hurt: # Field №41
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b00000010) != 0)
  has_field_ice_sub_hurt: # Field №42
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b00000100) != 0)
  has_field_rock_sub_hurt: # Field №43
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b00001000) != 0)
  has_field_fire_add_hurt: # Field №44
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b00010000) != 0)
  has_field_grass_add_hurt: # Field №45
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b00100000) != 0)
  has_field_water_add_hurt: # Field №46
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b01000000) != 0)
  has_field_elec_add_hurt: # Field №47
    value: (bit_field.length.value >= (0b00000101 + 1)) and ((bit_field.bitfield[0b00000101] & 0b10000000) != 0)
  has_field_wind_add_hurt: # Field №48
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b00000001) != 0)
  has_field_ice_add_hurt: # Field №49
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b00000010) != 0)
  has_field_rock_add_hurt: # Field №50
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b00000100) != 0)
  has_field_prop_grow_curves: # Field №51
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b00001000) != 0)
  has_field_element_mastery: # Field №52
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b00010000) != 0)
  has_field_physical_sub_hurt: # Field №53
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b00100000) != 0)
  has_field_physical_add_hurt: # Field №54
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b01000000) != 0)
  has_field_prefab_path_ragdoll_hash: # Field №55
    value: (bit_field.length.value >= (0b00000110 + 1)) and ((bit_field.bitfield[0b00000110] & 0b10000000) != 0)
  has_field_id: # Field №56
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b00000001) != 0)
  has_field_name: # Field №57
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b00000010) != 0)
  has_field_prefab_path_hash: # Field №58
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b00000100) != 0)
  has_field_prefab_path_remote_hash: # Field №59
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b00001000) != 0)
  has_field_controller_path_hash: # Field №60
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b00010000) != 0)
  has_field_controller_path_remote_hash: # Field №61
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b00100000) != 0)
  has_field_camp_id: # Field №62
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b01000000) != 0)
  has_field_lod_pattern_name: # Field №63
    value: (bit_field.length.value >= (0b00000111 + 1)) and ((bit_field.bitfield[0b00000111] & 0b10000000) != 0)
