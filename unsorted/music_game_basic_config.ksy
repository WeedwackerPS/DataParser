types:
  music_game_basic_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: music_id
        type: aux_types::vlq_base128_le_u
        if: has_field_music_id
      - id: music_level
        type: aux_types::vlq_base128_le_u
        if: has_field_music_level
      - id: json_path
        type: aux_types::string
        if: has_field_json_path
      - id: long_press_interval
        type: aux_types::vlq_base128_le_u
        if: has_field_long_press_interval
      - id: long_press_down_speed
        type: f4
        if: has_field_long_press_down_speed
      - id: long_press_pre_time
        type: aux_types::vlq_base128_le_u
        if: has_field_long_press_pre_time
      - id: success_pre_point
        type: f4
        if: has_field_success_pre_point
      - id: success_late_point
        type: f4
        if: has_field_success_late_point
      - id: scale_time
        type: aux_types::vlq_base128_le_u
        if: has_field_scale_time
      - id: scale_range
        type: f4
        if: has_field_scale_range
      - id: score_level_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_score_level_list
      - id: score_one_key
        type: aux_types::vlq_base128_le_u
        if: has_field_score_one_key
      - id: combo_config
        type: array_of__combo_config__length_s
        if: has_field_combo_config
      - id: unlock_tips
        type: aux_types::vlq_base128_le_u
        if: has_field_unlock_tips
      - id: solo_config
        type: array_of__solo_config__length_s
        if: has_field_solo_config
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_music_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_music_level: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_json_path: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_long_press_interval: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_long_press_down_speed: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_long_press_pre_time: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_success_pre_point: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_success_late_point: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_scale_time: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_scale_range: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_score_level_list: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_score_one_key: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_combo_config: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
      has_field_unlock_tips: # Field №14
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
      has_field_solo_config: # Field №15
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
