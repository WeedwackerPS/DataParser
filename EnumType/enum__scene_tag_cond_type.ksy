meta:
  id: enum__scene_tag_cond_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: scene_tag_cond_type
enums:
  scene_tag_cond_type:
    0: scene_tag_cond_type_none
    1: scene_tag_cond_type_specific_activity_open
    2: scene_tag_cond_type_quest_global_var_equal
    4: scene_tag_cond_type_activity_content_open
    5: scene_tag_cond_type_quest_finish
