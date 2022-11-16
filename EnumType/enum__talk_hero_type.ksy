meta:
  id: enum__talk_hero_type
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
    enum: talk_hero_type
enums:
  talk_hero_type:
    0: talk_hero_local
    1: talk_hero_main
