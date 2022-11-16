meta:
  id: enum__ability_group_target_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: ability_group_target_type
enums:
  ability_group_target_type:
    0: ability_group_target_none
    1: ability_group_target_avatar
    2: ability_group_target_team
