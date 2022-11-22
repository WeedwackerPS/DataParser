types:
  investigation_target_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_quest_id
      - id: investigation_id
        type: aux_types::vlq_base128_le_u
        if: has_field_investigation_id
      - id: reward_id
        type: aux_types::vlq_base128_le_u
        if: has_field_reward_id
      - id: icon
        type: aux_types::string
        if: has_field_icon
      - id: image
        type: aux_types::string
        if: has_field_image
      - id: info_des
        type: aux_types::vlq_base128_le_u
        if: has_field_info_des
      - id: guide
        type: quest_guide
        if: has_field_guide
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
      has_field_quest_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_investigation_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_reward_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_icon: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_image: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_info_des: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_guide: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_trigger_config: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_progress: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_is_disuse: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
