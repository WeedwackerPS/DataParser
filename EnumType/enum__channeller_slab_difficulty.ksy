meta:
  id: enum__channeller_slab_difficulty
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
    enum: channeller_slab_difficulty
enums:
  channeller_slab_difficulty:
    0: channeller_slab_difficulty_none
    1: channeller_slab_difficulty_primer
    2: channeller_slab_difficulty_normal
    3: channeller_slab_difficulty_hard
    4: channeller_slab_difficulty_expert
