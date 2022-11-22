types:
  mp_play_statistic_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: mp_play_id
        type: aux_types::vlq_base128_le_u
        if: has_field_mp_play_id
      - id: settle_type
        type: enum__mp_player_settle_type
        if: has_field_settle_type
      - id: settle_param
        type: array_of__aux_types__string__length_u
        if: has_field_settle_param
      - id: client_sync_type
        type: enum__mp_player_settle_sync_type
        if: has_field_client_sync_type
      - id: client_sync_param
        type: aux_types::string
        if: has_field_client_sync_param
      - id: mpchallengetitle
        type: aux_types::vlq_base128_le_u
        if: has_field_mpchallengetitle
      - id: mpchallenge
        type: aux_types::vlq_base128_le_u
        if: has_field_mpchallenge
      - id: mpchallengestyle
        type: aux_types::vlq_base128_le_u
        if: has_field_mpchallengestyle
      - id: image
        type: aux_types::string
        if: has_field_image
      - id: priority
        type: aux_types::vlq_base128_le_u
        if: has_field_priority
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_mp_play_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_settle_type: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_settle_param: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_client_sync_type: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_client_sync_param: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_mpchallengetitle: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_mpchallenge: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_mpchallengestyle: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_image: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_priority: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
