meta:
  id: config_monster_head_control
  endian: le
  license: GPLv2
  imports:
    - config_head_control
seq:
  - id: base
    type: config_head_control
instances:
  # Base class fields
  use_head_control:
    value: base.use_head_control
  max_yaw_degree:
    value: base.max_yaw_degree
  max_pitch_degree:
    value: base.max_pitch_degree
  speed:
    value: base.speed
  weight_speed:
    value: base.weight_speed
  use_white_anim_states:
    value: base.use_white_anim_states
  anim_states:
    value: base.anim_states
  dont_anim_states:
    value: base.dont_anim_states
