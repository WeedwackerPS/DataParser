meta:
  id: by_target_is_ghost_to_enemy
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
instances:
  # Base class fields
  target:
    value: base.target
