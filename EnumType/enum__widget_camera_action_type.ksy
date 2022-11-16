meta:
  id: enum__widget_camera_action_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: widget_camera_action_type
enums:
  widget_camera_action_type:
    0: widget_camera_action_none
    1: widget_camera_action_notify_server
