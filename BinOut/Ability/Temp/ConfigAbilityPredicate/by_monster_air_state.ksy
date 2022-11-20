meta:
  id: by_monster_air_state
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: is_air_move
    type: u1
    if: has_field_is_air_move
instances:
  has_field_is_air_move: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
