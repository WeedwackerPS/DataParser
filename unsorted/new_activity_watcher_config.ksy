types:
  new_activity_watcher_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: reward_preview
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_preview
      - id: activitychallengetips
        type: aux_types::vlq_base128_le_u
        if: has_field_activitychallengetips
      - id: extra_activitychallengetips
        type: aux_types::vlq_base128_le_u
        if: has_field_extra_activitychallengetips
      - id: is_auto_grant
        type: u1
        if: has_field_is_auto_grant
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
      has_field_reward_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_reward_preview: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_activitychallengetips: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_extra_activitychallengetips: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_is_auto_grant: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_trigger_config: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_progress: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_is_disuse: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
