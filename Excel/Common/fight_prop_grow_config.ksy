meta:
  id: fight_prop_grow_config
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__fight_prop_type
    - ../../EnumType/enum__grow_curve_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: enum__fight_prop_type
    if: has_field_type
  - id: grow_curve
    type: enum__grow_curve_type
    if: has_field_grow_curve
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_grow_curve: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)