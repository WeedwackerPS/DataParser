meta:
  id: enum__find_hilichurl_assignment_type
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
    enum: find_hilichurl_assignment_type
enums:
  find_hilichurl_assignment_type:
    0: assignment_type_giving
    1: assignment_type_fight
