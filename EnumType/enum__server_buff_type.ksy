meta:
  id: enum__server_buff_type
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
    enum: server_buff_type
enums:
  server_buff_type:
    0: server_buff_none
    1: server_buff_avatar
    2: server_buff_team
    3: server_buff_tower
