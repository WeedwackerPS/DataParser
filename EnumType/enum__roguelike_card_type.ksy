meta:
  id: enum__roguelike_card_type
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
    enum: roguelike_card_type
enums:
  roguelike_card_type:
    0: roguelike_card_tpye_none
    1: roguelike_card_tpye_ssr
    2: roguelike_card_tpye_sr
    3: roguelike_card_tpye_r
