types:
  config_sound_bank_lookup:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: default_cooldown
        type: f4
        if: has_field_default_cooldown
      - id: unload_policies
        type: dict_of__aux_types__string_config_sound_bank_unload_policy
        if: has_field_unload_policies
      - id: plain_events
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_plain_events
      - id: bank_ids
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_bank_ids
      - id: conditionals
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_conditionals
      - id: bank_reuse_rate
        type: f8
        if: has_field_bank_reuse_rate
      - id: switch_groups_affected_by_rtpcs
        type: array_of__aux_types__string__length_u
        if: has_field_switch_groups_affected_by_rtpcs
      - id: switch_groups_affected_by_events
        type: array_of__aux_types__string__length_u
        if: has_field_switch_groups_affected_by_events
      - id: state_groups_affected_by_events
        type: array_of__aux_types__string__length_u
        if: has_field_state_groups_affected_by_events
    instances:
      has_field_default_cooldown: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_unload_policies: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_plain_events: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_bank_ids: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_conditionals: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_bank_reuse_rate: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_switch_groups_affected_by_rtpcs: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_switch_groups_affected_by_events: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_state_groups_affected_by_events: # Field №8
        value: (bit_field.value & 0b100000000) != 0
