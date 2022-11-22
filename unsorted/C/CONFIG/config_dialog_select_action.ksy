types:
  config_dialog_select_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: talk_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_talk_id_list
      - id: dialog_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dialog_id_list
      - id: grp_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_grp_id_list
      - id: use_grp_id
        type: u1
        if: has_field_use_grp_id
    instances:
      has_field_talk_id_list: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_dialog_id_list: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_grp_id_list: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_use_grp_id: # Field №3
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
