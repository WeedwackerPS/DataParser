meta:
  id: enum__config_guide_context_list_type
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
    enum: config_guide_context_list_type
enums:
  config_guide_context_list_type:
    0: common
