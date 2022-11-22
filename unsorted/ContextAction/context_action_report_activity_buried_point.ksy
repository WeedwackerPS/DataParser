types:
  context_action_report_activity_buried_point:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: activity_id
        type: aux_types::vlq_base128_le_u
        if: has_field_activity_id
      - id: button_id
        type: aux_types::vlq_base128_le_u
        if: has_field_button_id
      - id: schedule_id
        type: aux_types::vlq_base128_le_u
        if: has_field_schedule_id
      - id: additional_info
        type: aux_types::string
        if: has_field_additional_info
    instances:
      has_field_activity_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_button_id: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_schedule_id: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_additional_info: # Field №3
        value: (bit_field & 0b1000) != 0
