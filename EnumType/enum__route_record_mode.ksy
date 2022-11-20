meta:
  id: enum__route_record_mode
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
    enum: route_record_mode
enums:
  route_record_mode:
    0: none
    1: prereach
    2: reach
