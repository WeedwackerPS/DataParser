meta:
  id: config_live_player
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../DictType/dict_of__aux_types__vlq_base128_le_u_aux_types__string
    - config_vod_player
seq:
  - id: base
    type: config_vod_player
  - id: bit_field
    type: u1
  - id: live_id
    type: aux_types::vlq_base128_le_u
    if: has_field_live_id
  - id: turn_on_radius
    type: f4
    if: has_field_turn_on_radius
  - id: turn_off_radius
    type: f4
    if: has_field_turn_off_radius
  - id: cue_point_ability_map
    type: dict_of__aux_types__vlq_base128_le_u_aux_types__string
    if: has_field_cue_point_ability_map
instances:
  has_field_live_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_turn_on_radius: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_turn_off_radius: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_cue_point_ability_map: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  vod_player_type:
    value: base.vod_player_type
