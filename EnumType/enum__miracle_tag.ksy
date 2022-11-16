meta:
  id: enum__miracle_tag
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
    enum: miracle_tag
enums:
  miracle_tag:
    0: tag_none
    1: tag_fire
    2: tag_test_one
    3: tag_test_two
    4: tag_scoin
    5: tag_avatar_exp
    6: tag_weapon_exp
    7: tag_avatar_promote
    8: tag_weapon_promote
    9: tag_skill_book
