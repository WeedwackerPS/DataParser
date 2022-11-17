meta:
  id: gallery_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__gallery_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: type
    type: enum__gallery_type
    if: has_field_type
  - id: param
    type: array_of__aux_types__string__length_u
    if: has_field_param
  - id: is_enable_single_prepare
    type: u1
    if: has_field_is_enable_single_prepare
  - id: single_prepare_time
    type: aux_types::vlq_base128_le_u
    if: has_field_single_prepare_time
  - id: is_enable_mp_prepare
    type: u1
    if: has_field_is_enable_mp_prepare
  - id: mp_prepare_time
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_prepare_time
  - id: can_interrupt_by_client
    type: u1
    if: has_field_can_interrupt_by_client
  - id: scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_scene_id
  - id: control_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_control_group_id
  - id: group_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_group_id
  - id: revive_point_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_revive_point_group_id
  - id: revive_point_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_revive_point_config_id
  - id: ability_group
    type: aux_types::string
    if: has_field_ability_group
  - id: ability_group_list
    type: array_of__aux_types__string__length_u
    if: has_field_ability_group_list
  - id: limit_region
    type: aux_types::string
    if: has_field_limit_region
  - id: center_scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_center_scene_id
  - id: center_pos_list
    type: array_of__f4__length_u
    if: has_field_center_pos_list
  - id: center_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_center_radius
  - id: duration
    type: aux_types::vlq_base128_le_u
    if: has_field_duration
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: gallery_name
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_name
  - id: gallery_msg
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_msg
  - id: pic
    type: aux_types::string
    if: has_field_pic
  - id: target
    type: aux_types::vlq_base128_le_u
    if: has_field_target
  - id: start_audio_values
    type: aux_types::string
    if: has_field_start_audio_values
  - id: end_audio_values
    type: aux_types::string
    if: has_field_end_audio_values
  - id: selectable_ability_groups
    type: array_of__aux_types__string__length_u
    if: has_field_selectable_ability_groups
  - id: team_ability_group_list
    type: array_of__aux_types__string__length_u
    if: has_field_team_ability_group_list
  - id: selectable_team_ability_group_list
    type: array_of__aux_types__string__length_u
    if: has_field_selectable_team_ability_group_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_param: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_is_enable_single_prepare: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_single_prepare_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_enable_mp_prepare: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_mp_prepare_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_can_interrupt_by_client: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_scene_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_control_group_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_group_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_revive_point_group_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_revive_point_config_id: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_ability_group: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_ability_group_list: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_limit_region: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_center_scene_id: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_center_pos_list: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_center_radius: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_duration: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_name: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_desc: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_gallery_name: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_gallery_msg: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_pic: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_target: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
  has_field_start_audio_values: # Field №26
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000100) != 0)
  has_field_end_audio_values: # Field №27
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00001000) != 0)
  has_field_selectable_ability_groups: # Field №28
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00010000) != 0)
  has_field_team_ability_group_list: # Field №29
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00100000) != 0)
  has_field_selectable_team_ability_group_list: # Field №30
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b01000000) != 0)
