types:
  audio_setting_slider_post_voice:
    seq:
      - id: base
        type: audio_setting_slider
      - id: bit_field
        type: u1
      - id: change_voice_array
        type: array_of__audio_setting_slider_post_voice_item__length_u
        if: has_field_change_voice_array
    instances:
      has_field_change_voice_array: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      rtpc:
        value: base.rtpc
      text_map:
        value: base.text_map
      min_value:
        value: base.min_value
      max_value:
        value: base.max_value
      each_values:
        value: base.each_values
