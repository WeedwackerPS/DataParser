types:
  music_info_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: music_id
        type: aux_types::vlq_base128_le_u
        if: has_field_music_id
      - id: music_time
        type: aux_types::vlq_base128_le_u
        if: has_field_music_time
      - id: level_id
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_level_id
      - id: music_name
        type: aux_types::vlq_base128_le_u
        if: has_field_music_name
      - id: music_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_music_desc
      - id: mark_name
        type: aux_types::vlq_base128_le_u
        if: has_field_mark_name
      - id: mark_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_mark_desc
      - id: cond_id
        type: aux_types::vlq_base128_le_u
        if: has_field_cond_id
      - id: watcher_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_watcher_list
      - id: avatar_id
        type: aux_types::vlq_base128_le_u
        if: has_field_avatar_id
      - id: point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_id
      - id: instrument_id
        type: aux_types::vlq_base128_le_u
        if: has_field_instrument_id
      - id: avatar_instrument_id
        type: aux_types::vlq_base128_le_u
        if: has_field_avatar_instrument_id
    instances:
      has_field_music_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_music_time: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_level_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_music_name: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_music_desc: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_mark_name: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_mark_desc: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_cond_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_watcher_list: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_avatar_id: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_point_id: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_instrument_id: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_avatar_instrument_id: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
