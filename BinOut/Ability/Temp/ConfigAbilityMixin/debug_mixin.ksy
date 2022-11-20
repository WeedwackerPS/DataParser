meta:
  id: debug_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
seq:
  - id: base
    type: config_ability_mixin
instances:
  # Base class fields
  is_unique:
    value: base.is_unique
