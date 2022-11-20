meta:
  id: buoyant_combat_level_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: day_index
    type: aux_types::vlq_base128_le_u
    if: has_field_day_index
  - id: reward_preview
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview
  - id: level_rule
    type: aux_types::vlq_base128_le_u
    if: has_field_level_rule
  - id: level_rule_brief
    type: aux_types::vlq_base128_le_u
    if: has_field_level_rule_brief
  - id: watcher_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id
  - id: watcher_score
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_score
  - id: recommend_level
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_recommend_level
  - id: icon_position
    type: array_of__f4__length_u
    if: has_field_icon_position
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gallery_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_group_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_day_index: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_preview: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_level_rule: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_level_rule_brief: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_watcher_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_watcher_score: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_recommend_level: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_icon_position: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
