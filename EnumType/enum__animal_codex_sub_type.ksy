meta:
  id: enum__animal_codex_sub_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__animal_codex_sub_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: animal_codex_sub_type
enums:
  animal_codex_sub_type:
    0: codex_subtype_elemental
    1: codex_subtype_hilichurl
    2: codex_subtype_abyss
    3: codex_subtype_fatui
    4: codex_subtype_automatron
    5: codex_subtype_human
    6: codex_subtype_beast
    7: codex_subtype_boss
    8: codex_subtype_aviary
    9: codex_subtype_animal
    10: codex_subtype_fish
    11: codex_subtype_critter
