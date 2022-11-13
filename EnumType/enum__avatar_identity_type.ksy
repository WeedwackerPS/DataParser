meta:
  id: enum__avatar_identity_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__avatar_identity_type:
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
