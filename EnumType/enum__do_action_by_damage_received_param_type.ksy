meta:
  id: enum__do_action_by_damage_received_param_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__do_action_by_damage_received_param_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: do_action_by_damage_received_param_type
enums:
  do_action_by_damage_received_param_type:
    0: hp_max_percent
