meta:
  id: enum__activity_group_link_type
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
    enum: activity_group_link_type
enums:
  activity_group_link_type:
    0: discrete
    1: circle
