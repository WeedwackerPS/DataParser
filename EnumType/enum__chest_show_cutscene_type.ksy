meta:
  id: enum__chest_show_cutscene_type
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
    enum: chest_show_cutscene_type
enums:
  chest_show_cutscene_type:
    0: none
    1: camera_look
    2: cutscene
