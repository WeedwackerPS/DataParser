meta:
  id: by_scene_prop_state
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../EnumType/enum__entity_type
    - ../../../../EnumType/enum__scene_obj_state
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: entity_type
    type: enum__entity_type
    if: has_field_entity_type
  - id: state
    type: enum__scene_obj_state
    if: has_field_state
instances:
  has_field_entity_type: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_state: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
