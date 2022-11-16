meta:
  id: enum__entity_attack_filter
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
    enum: entity_attack_filter
enums:
  entity_attack_filter:
    0: all_entities
    1: only_water
    2: only_grass
    3: only_grass_and_water
    4: ignore_scene_prop
