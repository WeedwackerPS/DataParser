types:
  config_dialog_next_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: talk_id
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_id
    instances:
      has_field_talk_id: # Field №0
        value: (bit_field & 0b1) != 0
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
