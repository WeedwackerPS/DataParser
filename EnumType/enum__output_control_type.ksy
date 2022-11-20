meta:
  id: enum__output_control_type
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
    enum: output_control_type
enums:
  output_control_type:
    0: output_control_none
    1: output_control_drop
    2: output_control_reward
    3: output_control_other
