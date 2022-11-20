meta:
  id: element_outer_glow_effect_mixin
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
