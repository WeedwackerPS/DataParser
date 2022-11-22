types:
  config_crowd_restriction_group:
    seq:
      - id: bit_field
        type: u1
      - id: spawn_condition
        type: enum__crowd_spawn_condition_type
        if: has_field_spawn_condition
      - id: quest_res
        type: array_of__config_crowd_quest_restriction__length_u
        if: has_field_quest_res
      - id: activity_res
        type: array_of__config_crowd_activity_restriction__length_u
        if: has_field_activity_res
      - id: time_res
        type: array_of__config_crowd_time_restriction__length_u
        if: has_field_time_res
      - id: scene_tags
        type: array_of__config_crowd_scene_tag_restriction__length_u
        if: has_field_scene_tags
    instances:
      has_field_spawn_condition: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_quest_res: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_activity_res: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_time_res: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_scene_tags: # Field №4
        value: (bit_field & 0b10000) != 0
