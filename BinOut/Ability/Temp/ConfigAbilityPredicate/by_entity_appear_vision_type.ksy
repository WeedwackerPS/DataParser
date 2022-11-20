meta:
  id: by_entity_appear_vision_type
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__entity_appear_vision_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: vision_type
    type: enum__entity_appear_vision_type
    if: has_field_vision_type
instances:
  has_field_vision_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
