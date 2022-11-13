meta:
  id: enum__decision_archetype
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__decision_archetype:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: decision_archetype
enums:
  decision_archetype:
    0: general
    1: cicin
    2: animal
    3: dahaka
    4: animal_homeworld
    5: animal_fishable
    100: player_auto
