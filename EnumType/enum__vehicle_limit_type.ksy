meta:
  id: enum__vehicle_limit_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: vehicle_limit_type
enums:
  vehicle_limit_type:
    0: vehicle_limit_none
    1: vehicle_limit_only_vehicle
    2: vehicle_limit_not_vehicle
