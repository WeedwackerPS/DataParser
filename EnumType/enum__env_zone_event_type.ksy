meta:
  id: enum__env_zone_event_type
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
    enum: env_zone_event_type
enums:
  env_zone_event_type:
    1: zone_animal
    2: zone_rand_task
    4: zone_rand_quest
    8: zone_ambush_monster
