meta:
  id: treasure_map_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: preview_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_preview_reward_id
  - id: npc_id
    type: aux_types::vlq_base128_le_u
    if: has_field_npc_id
  - id: npc_pos
    type: array_of__f4__length_u
    if: has_field_npc_pos
  - id: treasure_days
    type: aux_types::vlq_base128_le_u
    if: has_field_treasure_days
  - id: quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_quest_id
  - id: monster_probability
    type: f4
    if: has_field_monster_probability
  - id: reward_worktop_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_worktop_gadget_id
  - id: token_material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_token_material_id
  - id: unit_token_drop_id
    type: aux_types::vlq_base128_le_u
    if: has_field_unit_token_drop_id
  - id: mp_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_reward_id
  - id: host_reward_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_host_reward_limit
  - id: guest_reward_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_guest_reward_limit
  - id: mp_challenge_index
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_challenge_index
  - id: bonus_challenge_index
    type: aux_types::vlq_base128_le_u
    if: has_field_bonus_challenge_index
  - id: challenge_gadget_suite
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_gadget_suite
  - id: spot_revise_level_id
    type: aux_types::vlq_base128_le_u
    if: has_field_spot_revise_level_id
  - id: detector_material_id
    type: aux_types::vlq_base128_le_u
    if: has_field_detector_material_id
  - id: guide_child_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_guide_child_quest_id
  - id: front_child_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_front_child_quest_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activity_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_preview_reward_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_npc_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_npc_pos: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_treasure_days: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_quest_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_monster_probability: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_worktop_gadget_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_token_material_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_unit_token_drop_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_mp_reward_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_host_reward_limit: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_guest_reward_limit: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_mp_challenge_index: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_bonus_challenge_index: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_challenge_gadget_suite: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_spot_revise_level_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_detector_material_id: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_guide_child_quest_id: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_front_child_quest_id: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
