meta:
  id: enum__property_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: property_type
enums:
  property_type:
    0: entity
    1: actor
