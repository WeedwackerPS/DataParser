meta:
  id: enum__server_message_show_type
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
    enum: server_message_show_type
enums:
  server_message_show_type:
    0: server_message_show_type_none
    1: server_message_show_type_message
    2: server_message_show_type_info_message
