meta:
  id: by_target_global_value
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
    - ../../../../EnumType/enum__relation_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: key
    type: aux_types::string
    if: has_field_key
  - id: value
    type: aux_types::dynamic_float
    if: has_field_value
  - id: max_value
    type: aux_types::dynamic_float
    if: has_field_max_value
  - id: force_by_caster
    type: u1
    if: has_field_force_by_caster
  - id: compare_type
    type: enum__relation_type
    if: has_field_compare_type
instances:
  has_field_key: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_max_value: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_force_by_caster: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_compare_type: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  target:
    value: base.target
