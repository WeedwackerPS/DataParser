meta:
  id: enum__shopmall_entrance_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: shopmall_entrance_type
enums:
  shopmall_entrance_type:
    0: entrance_normal
    1: entrance_recharge
    2: entrance_tab
