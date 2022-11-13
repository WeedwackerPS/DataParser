meta:
  id: enum__system_valuer_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__system_valuer_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: system_valuer_type
enums:
  system_valuer_type:
    0: none
    1: element_level_co
    2: player_element_level_co
    3: player_shield_level_co
    4: player_element_level_co_with_mastery
