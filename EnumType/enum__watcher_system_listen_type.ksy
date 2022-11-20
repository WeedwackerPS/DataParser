meta:
  id: enum__watcher_system_listen_type
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
    enum: watcher_system_listen_type
enums:
  watcher_system_listen_type:
    0: none
    1: local_avatar
    2: team
