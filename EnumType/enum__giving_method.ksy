meta:
  id: enum__giving_method
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__giving_method:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: giving_method
enums:
  giving_method:
    0: giving_method_none
    1: giving_method_exact
    2: giving_method_group
    3: giving_method_vague_group
    4: giving_method_any_no_finish
