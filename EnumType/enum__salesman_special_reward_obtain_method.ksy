meta:
  id: enum__salesman_special_reward_obtain_method
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__salesman_special_reward_obtain_method:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: salesman_special_reward_obtain_method
enums:
  salesman_special_reward_obtain_method:
    0: method_day_probability
    1: method_day_accumulation
