meta:
  id: enum__job_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__job_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: job_type
enums:
  job_type:
    0: job_none
    1: job_swordman
    2: job_archer
