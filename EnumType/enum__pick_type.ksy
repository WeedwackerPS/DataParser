meta:
  id: enum__pick_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__pick_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: pick_type
enums:
  pick_type:
    0: none
    1: monster
    2: auto
    3: select
    4: attract
    5: auto_select
    6: group_auto
