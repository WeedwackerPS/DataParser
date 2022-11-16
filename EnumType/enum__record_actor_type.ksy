meta:
  id: enum__record_actor_type
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
    enum: record_actor_type
enums:
  record_actor_type:
    0: entity
    1: effect
