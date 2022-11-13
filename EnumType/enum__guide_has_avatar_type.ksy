meta:
  id: enum__guide_has_avatar_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_has_avatar_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_has_avatar_type
enums:
  guide_has_avatar_type:
    0: normal
    1: in_team