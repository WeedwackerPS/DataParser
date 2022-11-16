meta:
  id: enum__reference_type
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
    enum: reference_type
enums:
  reference_type:
    0: none
    1: use_entity
    2: use_target
