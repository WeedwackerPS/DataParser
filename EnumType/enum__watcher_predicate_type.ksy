meta:
  id: enum__watcher_predicate_type
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
    enum: watcher_predicate_type
enums:
  watcher_predicate_type:
    0: predicate_none
    1: predicate_quest_finish
    2: predicate_current_avatar
