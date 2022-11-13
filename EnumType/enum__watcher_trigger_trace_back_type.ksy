meta:
  id: enum__watcher_trigger_trace_back_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__watcher_trigger_trace_back_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: watcher_trigger_trace_back_type
enums:
  watcher_trigger_trace_back_type:
    0: watcher_trace_back_none
    1: watcher_trace_back_yes
    2: watcher_trace_back_no
