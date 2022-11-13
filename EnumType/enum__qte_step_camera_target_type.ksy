meta:
  id: enum__qte_step_camera_target_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__qte_step_camera_target_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: qte_step_camera_target_type
enums:
  qte_step_camera_target_type:
    0: qte_camera_tar_none
    1: qte_camera_tar_relative_to_avatar
