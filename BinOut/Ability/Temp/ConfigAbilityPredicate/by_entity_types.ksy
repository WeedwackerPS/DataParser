meta:
  id: by_entity_types
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../ArrayType/array_of__enum__entity_type__length_u
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: entity_types
    type: array_of__enum__entity_type__length_u
    if: has_field_entity_types
  - id: reject
    type: u1
    if: has_field_reject
  - id: use_event_source
    type: u1
    if: has_field_use_event_source
  - id: is_authority
    type: aux_types::vlq_base128_le_s
    if: has_field_is_authority
instances:
  has_field_entity_types: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_reject: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_use_event_source: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_is_authority: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  target:
    value: base.target
