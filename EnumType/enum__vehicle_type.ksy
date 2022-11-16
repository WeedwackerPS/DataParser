meta:
  id: enum__vehicle_type
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
    enum: vehicle_type
enums:
  vehicle_type:
    0: none
    1: ship
    2: skiff
