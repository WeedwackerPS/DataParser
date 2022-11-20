meta:
  id: enum__guide_cmd_type
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
    enum: guide_cmd_type
enums:
  guide_cmd_type:
    0: bag_page_scroll_tab
