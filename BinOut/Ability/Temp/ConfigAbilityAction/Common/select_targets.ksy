meta:
  id: select_targets
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../../../aux_types
    - ../../../../../EnumType/enum__select_targets_sort_type
    - ../../../../../ArrayType/array_of__enum__entity_type__length_u
seq:
  - id: bit_field
    type: u1
  - id: top_limit
    type: aux_types::vlq_base128_le_s
    if: has_field_top_limit
  - id: entity_type_priority
    type: array_of__enum__entity_type__length_u
    if: has_field_entity_type_priority
  - id: sort_type
    type: enum__select_targets_sort_type
    if: has_field_sort_type
instances:
  has_field_top_limit: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_entity_type_priority: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_sort_type: # Field №2
    value: (bit_field & 0b100) != 0
