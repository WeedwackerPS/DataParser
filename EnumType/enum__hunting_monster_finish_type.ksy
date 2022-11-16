meta:
  id: enum__hunting_monster_finish_type
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
    enum: hunting_monster_finish_type
enums:
  hunting_monster_finish_type:
    0: hunting_finish_type_none
    1: hunting_finish_type_all
    2: hunting_finish_type_target_monster
