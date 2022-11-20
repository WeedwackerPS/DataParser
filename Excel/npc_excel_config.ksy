meta:
  id: npc_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__billboard_type
    - ../EnumType/enum__npc_body_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: json_name
    type: aux_types::string
    if: has_field_json_name
  - id: json_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_json_path_hash
  - id: json_path_hash_pre
    type: s1
    if: has_field_json_path_hash
  - id: alias
    type: aux_types::string
    if: has_field_alias
  - id: script_data_path
    type: aux_types::string
    if: has_field_script_data_path
  - id: lua_data_path
    type: aux_types::string
    if: has_field_lua_data_path
  - id: lua_data_index
    type: aux_types::vlq_base128_le_u
    if: has_field_lua_data_index
  - id: has_combat
    type: u1
    if: has_field_has_combat
  - id: has_move
    type: u1
    if: has_field_has_move
  - id: has_audio
    type: u1
    if: has_field_has_audio
  - id: is_daily
    type: u1
    if: has_field_is_daily
  - id: dye_part
    type: aux_types::string
    if: has_field_dye_part
  - id: billboard_type
    type: enum__billboard_type
    if: has_field_billboard_type
  - id: billboard_icon
    type: aux_types::string
    if: has_field_billboard_icon
  - id: invisiable
    type: u1
    if: has_field_invisiable
  - id: disable_show_name
    type: u1
    if: has_field_disable_show_name
  - id: template_emotion_path
    type: aux_types::string
    if: has_field_template_emotion_path
  - id: animator_config_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_animator_config_path_hash
  - id: animator_config_path_hash_pre
    type: s1
    if: has_field_animator_config_path_hash
  - id: body_type
    type: enum__npc_body_type
    if: has_field_body_type
  - id: first_met_id
    type: aux_types::vlq_base128_le_u
    if: has_field_first_met_id
  - id: use_dyn_bone
    type: u1
    if: has_field_use_dyn_bone
  - id: is_release
    type: u1
    if: has_field_is_release
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
  has_field_json_name: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_json_path_hash: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_alias: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_script_data_path: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_lua_data_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_lua_data_index: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_has_combat: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_has_move: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_has_audio: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_is_daily: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_dye_part: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_billboard_type: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_billboard_icon: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_invisiable: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_disable_show_name: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_template_emotion_path: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_animator_config_path_hash: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_body_type: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_first_met_id: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_use_dyn_bone: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_is_release: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_id: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_name: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_prefab_path_hash: # Field №23
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_prefab_path_remote_hash: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
  has_field_controller_path_hash: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000100) != 0)
  has_field_controller_path_remote_hash: # Field №26
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00001000) != 0)
  has_field_camp_id: # Field №27
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00010000) != 0)
  has_field_lod_pattern_name: # Field №28
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00100000) != 0)
