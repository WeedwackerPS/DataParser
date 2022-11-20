meta:
  id: enum__photograph_task_type
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
    enum: photograph_task_type
enums:
  photograph_task_type:
    0: photograph_task_type_normal
    1: photograph_task_type_interaction
