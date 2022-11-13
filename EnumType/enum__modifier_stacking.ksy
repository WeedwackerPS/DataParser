meta:
  id: enum__modifier_stacking
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__modifier_stacking:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: modifier_stacking
enums:
  modifier_stacking:
    0: refresh
    1: unique
    2: prolong
    3: refresh_and_add_durability
    4: multiple
    5: multiple_refresh
    6: multiple_refresh_no_remove
    7: multiple_all_refresh
    8: global_unique
    9: overlap
    10: refresh_unique_durability
