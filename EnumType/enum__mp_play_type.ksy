meta:
  id: enum__mp_play_type
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
    enum: mp_play_type
enums:
  mp_play_type:
    0: mp_play_none
    1: mp_play_crucible
    2: mp_play_aster
    3: mp_play_dragon_spine
    4: mp_play_water_sprite
