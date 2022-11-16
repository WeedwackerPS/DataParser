meta:
  id: enum__sub_challenge_fade_out_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: sub_challenge_fade_out_type
enums:
  sub_challenge_fade_out_type:
    0: subchallenge_fadeout_type_none
    1: subchallenge_fadeout_type_success
    2: subchallenge_fadeout_type_fail
    3: subchallenge_fadeout_type_finish
