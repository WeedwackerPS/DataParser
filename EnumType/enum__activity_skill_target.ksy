meta:
  id: enum__activity_skill_target
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: activity_skill_target
enums:
  activity_skill_target:
    0: ast_avatar
    1: ast_team
    2: ast_play
