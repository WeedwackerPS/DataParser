types:
  dungeon_challenge_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: target_text_template
        type: aux_types::vlq_base128_le_u
        if: has_field_target_text_template
      - id: sub_target_text_template
        type: aux_types::vlq_base128_le_u
        if: has_field_sub_target_text_template
      - id: progress_text_template
        type: aux_types::vlq_base128_le_u
        if: has_field_progress_text_template
      - id: sub_progress_text_template
        type: aux_types::vlq_base128_le_u
        if: has_field_sub_progress_text_template
      - id: challenge_type
        type: enum__challenge_type
        if: has_field_challenge_type
      - id: is_forward_timing
        type: u1
        if: has_field_is_forward_timing
      - id: record_type
        type: enum__challenge_record_type
        if: has_field_record_type
      - id: no_success_hint
        type: u1
        if: has_field_no_success_hint
      - id: no_fail_hint
        type: u1
        if: has_field_no_fail_hint
      - id: interrupt_button_type
        type: enum__interrupt_button_type
        if: has_field_interrupt_button_type
      - id: is_success_when_not_settled
        type: u1
        if: has_field_is_success_when_not_settled
      - id: is_block_top_timer
        type: u1
        if: has_field_is_block_top_timer
      - id: sub_challenge_fade_out_rule
        type: enum__sub_challenge_fade_out_type
        if: has_field_sub_challenge_fade_out_rule
      - id: sub_challenge_fade_out_delay_time
        type: f4
        if: has_field_sub_challenge_fade_out_delay_time
      - id: sub_challenge_banner_rule
        type: enum__sub_challenge_banner_type
        if: has_field_sub_challenge_banner_rule
      - id: activity_skill_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_skill_id
      - id: team_ability_group_list
        type: array_of__aux_types__string__length_u
        if: has_field_team_ability_group_list
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_target_text_template: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_sub_target_text_template: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_progress_text_template: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_sub_progress_text_template: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_challenge_type: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_is_forward_timing: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_record_type: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_no_success_hint: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_no_fail_hint: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
      has_field_interrupt_button_type: # Field №10
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
      has_field_is_success_when_not_settled: # Field №11
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
      has_field_is_block_top_timer: # Field №12
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
      has_field_sub_challenge_fade_out_rule: # Field №13
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
      has_field_sub_challenge_fade_out_delay_time: # Field №14
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
      has_field_sub_challenge_banner_rule: # Field №15
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
      has_field_activity_skill_id: # Field №16
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
      has_field_team_ability_group_list: # Field №17
        value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
