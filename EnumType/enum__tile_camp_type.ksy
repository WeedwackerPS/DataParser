meta:
  id: enum__tile_camp_type
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
    enum: tile_camp_type
enums:
  tile_camp_type:
    0: enviro
    1: fix_camp_id
    2: owner_camp
