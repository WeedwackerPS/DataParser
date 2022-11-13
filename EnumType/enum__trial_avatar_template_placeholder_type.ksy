meta:
  id: enum__trial_avatar_template_placeholder_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__trial_avatar_template_placeholder_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: trial_avatar_template_placeholder_type
enums:
  trial_avatar_template_placeholder_type:
    0: trial_avatar_template_placeholder
