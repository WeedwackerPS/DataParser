meta:
  id: enum__food_quality_type
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
    enum: food_quality_type
enums:
  food_quality_type:
    0: food_quality_none
    1: food_quality_strange
    2: food_quality_ordinary
    3: food_quality_delicious
