meta:
  id: fix_dvalin_s04move_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
seq:
  - id: base
    type: config_ability_mixin
instances:
  # Base class fields
  is_unique:
    value: base.is_unique
