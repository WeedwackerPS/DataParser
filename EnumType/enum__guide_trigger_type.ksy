meta:
  id: enum__guide_trigger_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_trigger_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_trigger_type
enums:
  guide_trigger_type:
    0: player_level
    1: any_avatar_level
    2: get_new_item
    3: openstate_change
    4: has_avatar_num
    5: personalline_key
    6: climate_type_change
    7: worldplayer_update
    8: pushtips_notify_finish
    9: new_pushtips
