meta:
  id: enum__home_avatar_event_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__home_avatar_event_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: home_avatar_event_cond_type
enums:
  home_avatar_event_cond_type:
    0: home_avatar_cond_none
    1: home_avatar_cond_fetter_level
    2: home_avatar_cond_exp_level
