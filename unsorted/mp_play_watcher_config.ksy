types:
  mp_play_watcher_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: mp_play_id
        type: aux_types::vlq_base128_le_u
        if: has_field_mp_play_id
      - id: priority
        type: aux_types::vlq_base128_le_u
        if: has_field_priority
      - id: is_store
        type: u1
        if: has_field_is_store
      - id: challenge_desc
        type: aux_types::vlq_base128_le_u
        if: has_field_challenge_desc
      - id: challenge_title
        type: aux_types::vlq_base128_le_u
        if: has_field_challenge_title
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: trigger_config
        type: watcher_trigger_config
        if: has_field_trigger_config
      - id: progress
        type: aux_types::vlq_base128_le_u
        if: has_field_progress
      - id: is_disuse
        type: u1
        if: has_field_is_disuse
    instances:
      has_field_mp_play_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_priority: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_is_store: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_challenge_desc: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_challenge_title: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_trigger_config: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_progress: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_is_disuse: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
