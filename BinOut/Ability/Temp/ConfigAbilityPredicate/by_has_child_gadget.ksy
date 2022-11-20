meta:
  id: by_has_child_gadget
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../../../aux_types
    - ../../../../EnumType/enum__relation_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: config_id_array
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_config_id_array
  - id: value
    type: aux_types::vlq_base128_le_u
    if: has_field_value
  - id: compare_type
    type: enum__relation_type
    if: has_field_compare_type
  - id: force_by_caster
    type: u1
    if: has_field_force_by_caster
  - id: check_entity_alive
    type: u1
    if: has_field_check_entity_alive
instances:
  has_field_config_id_array: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_value: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_compare_type: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_force_by_caster: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_check_entity_alive: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  target:
    value: base.target
