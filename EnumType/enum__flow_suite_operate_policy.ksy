meta:
  id: enum__flow_suite_operate_policy
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
    enum: flow_suite_operate_policy
enums:
  flow_suite_operate_policy:
    0: flow_suite_op_default
    1: flow_suite_op_complete
