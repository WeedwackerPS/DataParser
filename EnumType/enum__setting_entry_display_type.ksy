meta:
  id: enum__setting_entry_display_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__setting_entry_display_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: setting_entry_display_type
enums:
  setting_entry_display_type:
    0: grade
    1: literally
    2: text_map
