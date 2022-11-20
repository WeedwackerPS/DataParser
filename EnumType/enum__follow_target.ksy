meta:
  id: enum__follow_target
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
    enum: follow_target
enums:
  follow_target:
    0: local_avatar
    1: local_avatar_authority
    2: target_entity
    3: group_gadget_entity
    4: group_monster_entity
