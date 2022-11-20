meta:
  id: enum__qte_step_action_type
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
    enum: qte_step_action_type
enums:
  qte_step_action_type:
    0: qte_step_action_none
    1: qte_step_action_success
    2: qte_step_action_fail
    3: qte_step_action_power_bar_value_change
    4: qte_step_action_power_bar_press_down
    5: qte_step_action_avatar_shake_head
    6: qte_step_action_play_audio
    7: qte_step_action_camera_move
    8: qte_step_action_emotion
