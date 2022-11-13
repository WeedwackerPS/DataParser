meta:
  id: enum__change_field_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__change_field_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: change_field_type
enums:
  change_field_type:
    0: follow_ownner
    1: size_by_time
