meta:
  id: enum__blossom_show_type
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
    enum: blossom_show_type
enums:
  blossom_show_type:
    0: blossom_showtype_none
    1: blossom_showtype_challenge
    2: blossom_showtype_npctalk
    3: blossom_showtype_groupchallenge
