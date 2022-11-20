meta:
  id: by_player_climate_type
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__json_climate_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: climate_type
    type: enum__json_climate_type
    if: has_field_climate_type
instances:
  has_field_climate_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
