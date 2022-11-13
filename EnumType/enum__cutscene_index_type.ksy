meta:
  id: enum__cutscene_index_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__cutscene_index_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: cutscene_index_type
enums:
  cutscene_index_type:
    0: cutscene
    1: video
    2: other
