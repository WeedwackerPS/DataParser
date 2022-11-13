meta:
  id: enum__perf_cost_ratio_grade
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__perf_cost_ratio_grade:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: perf_cost_ratio_grade
enums:
  perf_cost_ratio_grade:
    0: min
    1: low
    2: middle
    4: high
    10: max
