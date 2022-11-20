meta:
  id: enum__sub_challenge_banner_type
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
    enum: sub_challenge_banner_type
enums:
  sub_challenge_banner_type:
    0: subchallenge_banner_type_none
    1: subchallenge_banner_type_success
    2: subchallenge_banner_type_fail
    3: subchallenge_banner_type_show_final
    4: subchallenge_banner_type_hide_final
