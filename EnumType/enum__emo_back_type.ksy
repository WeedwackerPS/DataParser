meta:
  id: enum__emo_back_type
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
    enum: emo_back_type
enums:
  emo_back_type:
    0: none
    1: without_blink
    2: with_blink
