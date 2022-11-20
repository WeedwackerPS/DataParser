meta:
  id: enum__action_panel_state
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
    enum: action_panel_state
enums:
  action_panel_state:
    0: normal
    1: jump
    2: climb
    3: fly
    4: aim
    5: fast_aim
    6: swim
    7: ladder
    8: squat
    9: combat_air
    10: perform
    11: close_all
