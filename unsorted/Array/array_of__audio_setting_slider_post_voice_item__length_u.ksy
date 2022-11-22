types:
  array_of__audio_setting_slider_post_voice_item__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: audio_setting_slider_post_voice_item
        repeat: expr
        repeat-expr: length.value
