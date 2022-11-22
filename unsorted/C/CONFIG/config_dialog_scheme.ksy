types:
  config_dialog_scheme:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: next_dialogs
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_next_dialogs
      - id: talk_show_type
        type: enum__talk_show_type
        if: has_field_talk_show_type
      - id: talk_role
        type: talk_role_ex
        if: has_field_talk_role
      - id: talk_content
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_content
      - id: talk_title
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_title
      - id: talk_role_name
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_role_name
      - id: talk_asset_path
        type: aux_types::string
        if: has_field_talk_asset_path
      - id: talk_asset_path_alter
        type: aux_types::string
        if: has_field_talk_asset_path_alter
      - id: talk_audio_name
        type: aux_types::string
        if: has_field_talk_audio_name
      - id: action_before
        type: aux_types::string
        if: has_field_action_before
      - id: action_while
        type: aux_types::string
        if: has_field_action_while
      - id: action_after
        type: aux_types::string
        if: has_field_action_after
      - id: show_duration
        type: f4
        if: has_field_show_duration
      - id: option_icon
        type: aux_types::string
        if: has_field_option_icon
    instances:
      has_field_id: # Field №0
        value: (bit_field.value & 00000001) != 0
      has_field_next_dialogs: # Field №1
        value: (bit_field.value & 00000010) != 0
      has_field_talk_show_type: # Field №2
        value: (bit_field.value & 00000100) != 0
      has_field_talk_role: # Field №3
        value: (bit_field.value & 00001000) != 0
      has_field_talk_content: # Field №4
        value: (bit_field.value & 00010000) != 0
      has_field_talk_title: # Field №5
        value: (bit_field.value & 00100000) != 0
      has_field_talk_role_name: # Field №6
        value: (bit_field.value & 01000000) != 0
      has_field_talk_asset_path: # Field №7
        value: (bit_field.value & 0b000000010000000) != 0
      has_field_talk_asset_path_alter: # Field №8
        value: (bit_field.value & 0b000000100000000) != 0
      has_field_talk_audio_name: # Field №9
        value: (bit_field.value & 0b000001000000000) != 0
      has_field_action_before: # Field №10
        value: (bit_field.value & 0b000010000000000) != 0
      has_field_action_while: # Field №11
        value: (bit_field.value & 0b000100000000000) != 0
      has_field_action_after: # Field №12
        value: (bit_field.value & 0b001000000000000) != 0
      has_field_show_duration: # Field №13
        value: (bit_field.value & 0b010000000000000) != 0
      has_field_option_icon: # Field №14
        value: (bit_field.value & 0b100000000000000) != 0
