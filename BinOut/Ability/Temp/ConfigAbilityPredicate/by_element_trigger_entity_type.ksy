meta:
  id: by_element_trigger_entity_type
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__enum__entity_type__length_u
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_entity_types
  - id: forceby_origin_owner
    type: u1
    if: has_field_forceby_origin_owner
instances:
  has_field_entity_types: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_forceby_origin_owner: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  target:
    value: base.target
