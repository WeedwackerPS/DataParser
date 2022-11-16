meta:
  id: enum__animator_param_type
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
    enum: animator_param_type
enums:
  animator_param_type:
    0: trigger
    1: bool
    2: int
    3: float
