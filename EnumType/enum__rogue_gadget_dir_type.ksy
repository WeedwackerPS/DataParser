meta:
  id: enum__rogue_gadget_dir_type
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
    enum: rogue_gadget_dir_type
enums:
  rogue_gadget_dir_type:
    0: rogue_gadget_rot_up
    1: rogue_gadget_rot_down
    2: rogue_gadget_rot_left
    3: rogue_gadget_rot_right
