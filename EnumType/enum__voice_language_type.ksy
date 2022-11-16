meta:
  id: enum__voice_language_type
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
    enum: voice_language_type
enums:
  voice_language_type:
    0: chinese
    1: english
    2: japanese
    3: korean
