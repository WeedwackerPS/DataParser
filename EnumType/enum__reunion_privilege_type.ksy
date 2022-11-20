meta:
  id: enum__reunion_privilege_type
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
    enum: reunion_privilege_type
enums:
  reunion_privilege_type:
    0: reunion_privilege_type_none
    1: reunion_privilege_type_dungeon
    2: reunion_privilege_type_blossom
