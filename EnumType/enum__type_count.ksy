meta:
  id: enum__type_count
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: type_count
enums:
  type_count:
    5: reliquary_type_count
