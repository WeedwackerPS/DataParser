meta:
  id: enum__qte_step_camera_pos_type
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
    enum: qte_step_camera_pos_type
enums:
  qte_step_camera_pos_type:
    0: qte_camera_pos_none
    1: qte_camera_pos_exit
    2: qte_camera_pos_relative_to_avatar
