meta:
  id: enum__animal_codex_count_type
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
    enum: animal_codex_count_type
enums:
  animal_codex_count_type:
    0: codex_count_type_none
    1: codex_count_type_kill
    2: codex_count_type_fish
