meta:
  id: enum__animator_param_type2
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__animator_param_type2:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: animator_param_type2
enums:
  animator_param_type2:
    0: trigger
    1: bool
    2: int
    3: float
