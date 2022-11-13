meta:
  id: enum__ability_group_source_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__ability_group_source_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: ability_group_source_type
enums:
  ability_group_source_type:
    0: ability_group_source_none
    1: ability_group_source_challenge
    2: ability_group_source_quest
    3: ability_group_source_activity
    4: ability_group_source_hunting
    5: ability_group_source_watcher
    6: ability_group_source_avatar_skill_depot
    7: ability_group_source_gallery
    8: ability_group_source_widget
    9: ability_group_source_fishing
