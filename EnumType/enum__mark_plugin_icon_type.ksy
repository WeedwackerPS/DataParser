meta:
  id: enum__mark_plugin_icon_type
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
    enum: mark_plugin_icon_type
enums:
  mark_plugin_icon_type:
    0: none
    1: boss
    2: character
    3: paimon
