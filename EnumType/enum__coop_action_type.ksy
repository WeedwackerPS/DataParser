meta:
  id: enum__coop_action_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__coop_action_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: coop_action_type
enums:
  coop_action_type:
    0: coop_action_none
    1: coop_action_temperament_add
    2: coop_action_temperament_minus
    3: coop_action_confidence_add
    4: coop_action_confidence_minus
    5: coop_action_temp_value_set
    6: coop_action_select_temperament_set
    7: coop_action_temp_value_add
    8: coop_action_temp_value_minus
