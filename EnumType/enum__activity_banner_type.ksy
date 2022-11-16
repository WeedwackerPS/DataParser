meta:
  id: enum__activity_banner_type
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
    enum: activity_banner_type
enums:
  activity_banner_type:
    0: activity_banner_default
    1: activity_banner_monster
    2: activity_banner_chapter
