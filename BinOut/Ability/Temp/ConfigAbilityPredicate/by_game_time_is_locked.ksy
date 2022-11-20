meta:
  id: by_game_time_is_locked
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: is_locked
    type: u1
    if: has_field_is_locked
instances:
  has_field_is_locked: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
