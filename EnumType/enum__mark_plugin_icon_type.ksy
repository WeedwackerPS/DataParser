meta:
  id: enum__mark_plugin_icon_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__mark_plugin_icon_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: mark_plugin_icon_type
enums:
  mark_plugin_icon_type:
    0: none
    1: boss
    2: character
    3: paimon