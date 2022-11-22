types:
  config_speech_bubble_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: dialog_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dialog_id
      - id: priority
        type: aux_types::vlq_base128_le_u
        if: has_field_priority
      - id: hold_on
        type: u1
        if: has_field_hold_on
      - id: try_stop
        type: u1
        if: has_field_try_stop
    instances:
      has_field_dialog_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_priority: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_hold_on: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_try_stop: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
