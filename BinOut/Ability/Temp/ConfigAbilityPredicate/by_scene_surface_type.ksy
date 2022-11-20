meta:
  id: by_scene_surface_type
  endian: le
  license: GPL
  imports:
    - ../config_ability_predicate
    - ../../../Common/vector
    - ../../../../aux_types
    - ../../../../EnumType/enum__scene_surface_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: filters
    type: array_of__enum__scene_surface_type__length_u
    if: has_field_filters
  - id: include
    type: u1
    if: has_field_include
  - id: offset
    type: vector
    if: has_field_offset
instances:
  has_field_filters: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_include: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_offset: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  target:
    value: base.target
types:
  array_of__enum__scene_surface_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__scene_surface_type
        repeat: expr
        repeat-expr: length.value
