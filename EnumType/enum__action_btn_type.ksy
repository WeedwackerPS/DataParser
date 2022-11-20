meta:
  id: enum__action_btn_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: action_btn_type
enums:
  action_btn_type:
    0: sprint
    1: jump
    2: slip
    3: attack_mode
    4: skill1
    5: skill2
    6: skill3
    7: skill4
    8: skill5
    9: skill_left
    10: squat
    11: roll
    12: charge
    13: quick_use
    14: vehicle_off
