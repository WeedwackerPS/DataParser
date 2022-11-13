meta:
  id: enum__product_play_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__product_play_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: product_play_type
enums:
  product_play_type:
    0: product_play_type_none
    1: product_play_type_battle_pass_normal
    2: product_play_type_battle_pass_extra
    3: product_play_type_battle_pass_upgrade
