meta:
  id: enum__mp_play_show_type
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
    enum: mp_play_show_type
enums:
  mp_play_show_type:
    0: mp_play_show_normal
    1: mp_play_show_no_resin
    2: mp_play_show_two_material
