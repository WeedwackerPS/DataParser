meta:
  id: enum__animal_codex_type
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
    enum: animal_codex_type
enums:
  animal_codex_type:
    0: codex_animal
    1: codex_monster
