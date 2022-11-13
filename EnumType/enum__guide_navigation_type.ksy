meta:
  id: enum__guide_navigation_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_navigation_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_navigation_type
enums:
  guide_navigation_type:
    0: none
    1: task
    2: quest
