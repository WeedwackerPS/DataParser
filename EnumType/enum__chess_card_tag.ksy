meta:
  id: enum__chess_card_tag
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
    enum: chess_card_tag
enums:
  chess_card_tag:
    0: card_tag_none
    1: card_tag_water
    2: card_tag_fire
    3: card_tag_ice
    4: card_tag_wind
    5: card_tag_electric
    6: card_tag_physics
    7: card_tag_help
    8: card_tag_other
