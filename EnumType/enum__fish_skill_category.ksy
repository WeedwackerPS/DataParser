meta:
  id: enum__fish_skill_category
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
    enum: fish_skill_category
enums:
  fish_skill_category:
    0: fish_skill_category_none
    1: fish_skill_category_force
    2: fish_skill_category_bonus
