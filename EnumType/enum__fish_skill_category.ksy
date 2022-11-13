meta:
  id: enum__fish_skill_category
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__fish_skill_category:
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