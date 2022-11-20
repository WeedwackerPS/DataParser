meta:
  id: enum__group_io_type
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
    enum: group_io_type
enums:
  group_io_type:
    0: group_io_type_default
    1: group_io_type_flow
