meta:
  id: enum__investigation_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__investigation_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: investigation_type
enums:
  investigation_type:
    0: investigation_adventure
    1: investigation_homeworld
