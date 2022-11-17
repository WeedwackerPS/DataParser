meta:
  id: avatar_skill_depot_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: energy_skill
    type: aux_types::vlq_base128_le_u
    if: has_field_energy_skill
  - id: talent_skill
    type: aux_types::vlq_base128_le_u
    if: has_field_talent_skill
  - id: skills
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skills
  - id: sub_skills
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_sub_skills
  - id: attack_mode_skill
    type: aux_types::vlq_base128_le_u
    if: has_field_attack_mode_skill
  - id: leader_talent
    type: aux_types::vlq_base128_le_u
    if: has_field_leader_talent
  - id: extra_abilities
    type: array_of__aux_types__string__length_u
    if: has_field_extra_abilities
  - id: talents
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_talents
  - id: talent_star_name
    type: aux_types::string
    if: has_field_talent_star_name
  - id: core_proud_skill_group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_core_proud_skill_group_id
  - id: core_proud_avatar_promote_level
    type: aux_types::vlq_base128_le_u
    if: has_field_core_proud_avatar_promote_level
  - id: inherent_proud_skill_opens
    type: array_of__proud_skill_open_config__length_s
    if: has_field_inherent_proud_skill_opens
  - id: skill_depot_ability_group
    type: aux_types::string
    if: has_field_skill_depot_ability_group
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_energy_skill: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_talent_skill: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_skills: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_sub_skills: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_attack_mode_skill: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_leader_talent: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_extra_abilities: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_talents: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_talent_star_name: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_core_proud_skill_group_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_core_proud_avatar_promote_level: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_inherent_proud_skill_opens: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_skill_depot_ability_group: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
types:
  array_of__proud_skill_open_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: proud_skill_open_config
        repeat: expr
        repeat-expr: length.value
  proud_skill_open_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: proud_skill_group_id
        type: aux_types::vlq_base128_le_u
        if: has_field_proud_skill_group_id
      - id: need_avatar_promote_level
        type: aux_types::vlq_base128_le_u
        if: has_field_need_avatar_promote_level
    instances:
      has_field_proud_skill_group_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_need_avatar_promote_level: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)