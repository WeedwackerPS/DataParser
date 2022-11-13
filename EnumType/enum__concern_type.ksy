meta:
  id: enum__concern_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__concern_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: concern_type
enums:
  concern_type:
    0: all_exclude_gwgo
    1: combat_exclude_gwgo
    2: all_avatars
    3: local_avatar
    4: local_team
    5: all_vehicle
    6: all_avatars_on_vehicle
    7: local_vehicle
