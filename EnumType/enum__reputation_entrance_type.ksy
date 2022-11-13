meta:
  id: enum__reputation_entrance_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__reputation_entrance_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: reputation_entrance_type
enums:
  reputation_entrance_type:
    0: reputation_entrance_none
    1: reputation_entrance_quest
    2: reputation_entrance_request
    3: reputation_entrance_explore
    4: reputation_entrance_hunter
