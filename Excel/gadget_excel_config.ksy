meta:
  id: gadget_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__entity_type
    - ../EnumType/enum__vision_level_type
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: enum__entity_type
    if: has_field_type
  - id: json_name
    type: aux_types::string
    if: has_field_json_name
  - id: has_move
    type: u1
    if: has_field_has_move
  - id: has_audio
    type: u1
    if: has_field_has_audio
  - id: is_equip
    type: u1
    if: has_field_is_equip
  - id: is_interactive
    type: u1
    if: has_field_is_interactive
  - id: vision_level
    type: enum__vision_level_type
    if: has_field_vision_level
  - id: tags
    type: array_of__aux_types__string__length_u
    if: has_field_tags
  - id: client_script_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_client_script_hash
  - id: client_script_hash_pre
    type: s1
    if: has_field_client_script_hash
  - id: item_json_name
    type: aux_types::string
    if: has_field_item_json_name
  - id: item_prefab_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_item_prefab_path_hash
  - id: item_prefab_path_hash_pre
    type: s1
    if: has_field_item_prefab_path_hash
  - id: radar_hint_id
    type: aux_types::vlq_base128_le_u
    if: has_field_radar_hint_id
  - id: intee_icon_name
    type: aux_types::string
    if: has_field_intee_icon_name
  - id: land_sound_id
    type: aux_types::vlq_base128_le_u
    if: has_field_land_sound_id
  - id: mp_prop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_prop_id
  - id: interact_name
    type: aux_types::vlq_base128_le_u
    if: has_field_interact_name
  - id: chain_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chain_id
  - id: has_dynamic_barrier
    type: u1
    if: has_field_has_dynamic_barrier
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
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_json_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_has_move: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_has_audio: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_equip: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_interactive: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_vision_level: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_tags: # Field №7
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_client_script_hash: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_item_json_name: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_item_prefab_path_hash: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_radar_hint_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_intee_icon_name: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_land_sound_id: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_mp_prop_id: # Field №14
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_interact_name: # Field №15
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_chain_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_has_dynamic_barrier: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_id: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_name: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_prefab_path_hash: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_prefab_path_remote_hash: # Field №21
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_controller_path_hash: # Field №22
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
  has_field_controller_path_remote_hash: # Field №23
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000100) != 0)
  has_field_camp_id: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00001000) != 0)
  has_field_lod_pattern_name: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00010000) != 0)
