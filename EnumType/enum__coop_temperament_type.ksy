meta:
  id: enum__coop_temperament_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__coop_temperament_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: coop_temperament_type
enums:
  coop_temperament_type:
    1: coop_temperament_1
    2: coop_temperament_2
    3: coop_temperament_3
    4: coop_temperament_4
