meta:
  id: new_activity_overlap_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__new_activity_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: activity_type
    type: enum__new_activity_type
    if: has_field_activity_type
instances:
  has_field_activity_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
