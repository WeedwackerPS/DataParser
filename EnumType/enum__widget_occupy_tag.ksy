meta:
  id: enum__widget_occupy_tag
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__widget_occupy_tag:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: widget_occupy_tag
enums:
  widget_occupy_tag:
    1: action_panel
    2: fly_attach
