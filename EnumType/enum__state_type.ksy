meta:
  id: enum__state_type
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
    enum: state_type
enums:
  state_type:
    0: buff_none
    1: buff_control
