meta:
  id: enum__h5activity_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__h5activity_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: h5activity_cond_type
enums:
  h5activity_cond_type:
    0: h5_activity_cond_none
    1: h5_activity_cond_player_level
    2: h5_activity_cond_register_time_great_equal
    3: h5_activity_cond_day_count_great_equal
