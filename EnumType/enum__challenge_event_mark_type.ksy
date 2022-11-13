meta:
  id: enum__challenge_event_mark_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__challenge_event_mark_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: challenge_event_mark_type
enums:
  challenge_event_mark_type:
    0: challenge_event_none
    1: flight_time
    2: flight_gather_point
    3: summer_time_sprint_boat_time
    4: summer_time_sprint_boat_gather_point
