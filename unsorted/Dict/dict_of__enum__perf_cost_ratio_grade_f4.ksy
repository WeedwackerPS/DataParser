types:
  dict_of__enum__perf_cost_ratio_grade_f4:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__perf_cost_ratio_grade_f4
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__perf_cost_ratio_grade_f4:
    seq:
      - id: key
        type: enum__perf_cost_ratio_grade
      - id: value
        type: f4
