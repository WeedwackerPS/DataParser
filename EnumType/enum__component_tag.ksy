meta:
  id: enum__component_tag
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
    enum: component_tag
enums:
  component_tag:
    0: ability
    1: ai
    2: avatar_ai
    3: avatar_ai_no_combat
    4: combat
    5: gadget_combat
    6: bullet_combat
    7: gadget_collided_combat
    8: scene_prop_combat
    9: scene_grass_water_combat
    10: character_combat
    11: avatar_combat
    12: monster_combat
    13: has_equip
    14: has_avatar_equip
    15: has_monster_equip
    16: level
    17: paimon
    18: scene_prop
    19: team
    20: has_emotion
    21: has_billboard
    22: has_collision
    23: has_emoji_bubble
    24: has_face_animation
    25: has_move
    26: has_bullet_move
    27: has_humanoid_move
    28: has_non_humanoid_move
    29: has_animator_move
    30: has_npc_move
    31: has_simple_move
    32: has_rigid_body_move
