meta:
  id: enum__template_reminder_style_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__template_reminder_style_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: template_reminder_style_type
enums:
  template_reminder_style_type:
    0: normal
    1: message_dialog
    2: dialog_box
    3: message_push_page_first_time
