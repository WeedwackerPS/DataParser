meta:
  id: disp__born_random
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../../../aux_types
    - ../BornRandom/born_random
    - ../BornRandom/born_random_from_center
    - ../BornRandom/born_random_in_shape
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: born_random
        1: born_random_from_center
        2: born_random_in_shape
        _: aux_types::error
