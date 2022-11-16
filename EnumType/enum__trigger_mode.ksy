meta:
  id: enum__trigger_mode
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
    enum: trigger_mode
enums:
  trigger_mode:
    0: inside
    1: outside
