meta:
  id: enum__dont_destroy_on_load_type
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
    enum: dont_destroy_on_load_type
enums:
  dont_destroy_on_load_type:
    0: no
    1: once
    2: always
