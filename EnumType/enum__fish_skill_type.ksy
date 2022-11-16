meta:
  id: enum__fish_skill_type
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
    enum: fish_skill_type
enums:
  fish_skill_type:
    0: fish_skill_none
    1: fish_skill_hp
    2: fish_skill_force
    3: fish_skill_time
