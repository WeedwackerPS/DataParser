meta:
  id: enum__widget_event_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__widget_event_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: widget_event_type
enums:
  widget_event_type:
    1: collection_wind_seed