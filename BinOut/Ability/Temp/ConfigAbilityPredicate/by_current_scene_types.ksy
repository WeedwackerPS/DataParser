meta:
  id: by_current_scene_types
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
    - ../../../../EnumType/enum__scene_type
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: scene_types
    type: array_of__enum__scene_type__length_u
    if: has_field_scene_types
instances:
  has_field_scene_types: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
types:
  array_of__enum__scene_type__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__scene_type
        repeat: expr
        repeat-expr: length.value
