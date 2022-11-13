meta:
  id: enum__sectr_object_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__sectr_object_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: sectr_object_type
enums:
  sectr_object_type:
    0: object
    1: layer
    2: sector
