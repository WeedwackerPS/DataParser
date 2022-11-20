meta:
  id: by_stage_is_ready_temp
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
instances:
  # Base class fields
  target:
    value: base.target
