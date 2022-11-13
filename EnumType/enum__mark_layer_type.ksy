meta:
  id: enum__mark_layer_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mark_layer_type:
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
