meta:
  id: enum__reject_event_type
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
    enum: reject_event_type
enums:
  reject_event_type:
    0: none
    1: has_attack_landed
    255: reject_all
