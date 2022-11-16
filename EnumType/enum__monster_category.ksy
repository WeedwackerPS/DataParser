meta:
  id: enum__monster_category
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
    enum: monster_category
enums:
  monster_category:
    0: all
    1: common
    2: elite
    3: boss
    4: enum_count
