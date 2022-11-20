meta:
  id: enum__lua_call_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: lua_call_type
enums:
  lua_call_type:
    0: gadget
    1: owner_gadegt
    2: from_group
    3: owner_from_group
    4: specific_group
    5: cur_scene_play
    6: cur_challenge_group
    7: cur_gallery_control_group
    8: cur_rogue_boss_group
