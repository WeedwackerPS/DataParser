meta:
  id: enum__avatar_identity_type
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
    enum: avatar_identity_type
enums:
  avatar_identity_type:
    0: avatar_identity_master
    1: avatar_identity_normal
