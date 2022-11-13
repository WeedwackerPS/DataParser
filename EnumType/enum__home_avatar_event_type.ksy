meta:
  id: enum__home_avatar_event_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__home_avatar_event_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: home_avatar_event_type
enums:
  home_avatar_event_type:
    0: home_avatar_event_none
    1: home_avatar_reward_event
    2: home_avatar_summon_event
