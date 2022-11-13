meta:
  id: enum__emo_record_type_enum
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__emo_record_type_enum:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: emo_record_type_enum
enums:
  emo_record_type_enum:
    0: reset_emotion
    1: reset_phoneme
    2: set_emotion
    3: set_phoneme
    4: set_emotion_and_phoneme
    5: toggle
    6: play_sequence_sub
    7: play_sequence
    8: clear_emotion
    9: toggle_eye_ctrl
    10: clear_sequence
    11: blink
