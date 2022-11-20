meta:
  id: enum__investigation_monster_map_mark_create_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: investigation_monster_map_mark_create_type
enums:
  investigation_monster_map_mark_create_type:
    0: after_unlock
    1: nerver_create
    2: extra_conditions
