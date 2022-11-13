meta:
  id: enum__expedition_open_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__expedition_open_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: expedition_open_cond_type
enums:
  expedition_open_cond_type:
    0: exp_open_cond_level
    1: exp_open_cond_point
    2: exp_open_cond_quest
