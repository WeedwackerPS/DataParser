meta:
  id: enum__hide_and_seek_skill_sub_category
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: hide_and_seek_skill_sub_category
enums:
  hide_and_seek_skill_sub_category:
    0: hide_and_seek_skill_sub_category_none
    1: hide_and_seek_skill_sub_category_common
    2: hide_and_seek_skill_sub_category_skill1
    3: hide_and_seek_skill_sub_category_skill2
