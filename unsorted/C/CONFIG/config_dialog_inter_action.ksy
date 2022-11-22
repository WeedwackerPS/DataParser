types:
  config_dialog_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: dialog_type
        type: enum__dialog_type
        if: has_field_dialog_type
      - id: dialog_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dialog_id
      - id: protect_time
        type: f4
        if: has_field_protect_time
      - id: play_audio
        type: u1
        if: has_field_play_audio
      - id: auto_talk_use_new_protect_time
        type: u1
        if: has_field_auto_talk_use_new_protect_time
      - id: auto_talk_protect_time
        type: f4
        if: has_field_auto_talk_protect_time
    instances:
      has_field_dialog_type: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_dialog_id: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_protect_time: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_play_audio: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_auto_talk_use_new_protect_time: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_auto_talk_protect_time: # Field №5
        value: (bit_field & 0b100000) != 0
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
