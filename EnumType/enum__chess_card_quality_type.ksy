meta:
  id: enum__chess_card_quality_type
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
    enum: chess_card_quality_type
enums:
  chess_card_quality_type:
    0: card_quality_noraml
    1: card_quality_good
    2: card_quality_percect
