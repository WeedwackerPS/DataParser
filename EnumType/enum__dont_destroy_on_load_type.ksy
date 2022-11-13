meta:
  id: enum__dont_destroy_on_load_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__dont_destroy_on_load_type:
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
