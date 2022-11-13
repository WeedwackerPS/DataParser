meta:
  id: enum__hide_and_seek_skill_category
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__hide_and_seek_skill_category:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: hide_and_seek_skill_category
enums:
  hide_and_seek_skill_category:
    0: hide_and_seek_skill_category_none
    1: hide_and_seek_skill_category_hunter
    2: hide_and_seek_skill_category_prey
