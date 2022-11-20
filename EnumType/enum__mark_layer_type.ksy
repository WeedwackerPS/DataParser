meta:
  id: enum__mark_layer_type
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
    enum: mark_layer_type
enums:
  mark_layer_type:
    0: normal
    1: first
    2: last
