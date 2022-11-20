meta:
  id: by_has_component_tag
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
    - ../../../../aux_types
    - ../../../../EnumType/enum__component_tag
seq:
  - id: base
    type: config_ability_predicate
  - id: bit_field
    type: u1
  - id: tags
    type: array_of__enum__component_tag__length_u
    if: has_field_tags
instances:
  has_field_tags: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  target:
    value: base.target
types:
  array_of__enum__component_tag__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: enum__component_tag
        repeat: expr
        repeat-expr: length.value
