meta:
  id: enum__blossom_refresh_cond_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__blossom_refresh_cond_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: blossom_refresh_cond_type
enums:
  blossom_refresh_cond_type:
    0: blossom_refresh_cond_none
    1: blossom_refresh_cond_player_level_equal_greater
    2: blossom_refresh_cond_player_level_less_than
    3: blossom_refresh_cond_open_state
    4: blossom_refresh_cond_quest_finish
    5: blossom_refresh_cond_activity_cond
    6: blossom_refresh_cond_scene_tag_added
