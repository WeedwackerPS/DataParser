meta:
  id: enum__config_schedule_job_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__config_schedule_job_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: config_schedule_job_type
enums:
  config_schedule_job_type:
    0: default
    1: lose
