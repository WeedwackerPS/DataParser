meta:
  id: enum__config_graphic_setting_entry_sort_type
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
    enum: config_graphic_setting_entry_sort_type
enums:
  config_graphic_setting_entry_sort_type:
    0: none
    1: num_ascend
    2: num_descend
