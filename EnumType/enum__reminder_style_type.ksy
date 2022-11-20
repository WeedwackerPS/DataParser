meta:
  id: enum__reminder_style_type
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
    enum: reminder_style_type
enums:
  reminder_style_type:
    0: normal
    1: banner
    2: info_text_dialog
    3: event_prompt_down
    4: white_message
