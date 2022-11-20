meta:
  id: enum__talk_role_type
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
    enum: talk_role_type
enums:
  talk_role_type:
    0: talk_role_none
    1: talk_role_npc
    2: talk_role_player
    3: talk_role_mate_avatar
    4: talk_role_gadget
