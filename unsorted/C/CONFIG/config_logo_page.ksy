types:
  config_logo_page:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: channel_name
        type: aux_types::string
        if: has_field_channel_name
      - id: logo_file_name
        type: aux_types::string
        if: has_field_logo_file_name
      - id: show_tip_text
        type: u1
        if: has_field_show_tip_text
      - id: tip_text_map_id
        type: aux_types::string
        if: has_field_tip_text_map_id
      - id: show_tip_img_aw
        type: u1
        if: has_field_show_tip_img_aw
      - id: tip_img_aw_name
        type: aux_types::string
        if: has_field_tip_img_aw_name
      - id: show_warning_view
        type: u1
        if: has_field_show_warning_view
      - id: warning_title
        type: aux_types::string
        if: has_field_warning_title
      - id: warning_desc
        type: aux_types::string
        if: has_field_warning_desc
      - id: show_koran_tips_view
        type: u1
        if: has_field_show_koran_tips_view
      - id: koran_tips_desc
        type: aux_types::string
        if: has_field_koran_tips_desc
    instances:
      has_field_channel_name: # Field №0
        value: (bit_field.value & 0001) != 0
      has_field_logo_file_name: # Field №1
        value: (bit_field.value & 0010) != 0
      has_field_show_tip_text: # Field №2
        value: (bit_field.value & 0100) != 0
      has_field_tip_text_map_id: # Field №3
        value: (bit_field.value & 0b00000001000) != 0
      has_field_show_tip_img_aw: # Field №4
        value: (bit_field.value & 0b00000010000) != 0
      has_field_tip_img_aw_name: # Field №5
        value: (bit_field.value & 0b00000100000) != 0
      has_field_show_warning_view: # Field №6
        value: (bit_field.value & 0b00001000000) != 0
      has_field_warning_title: # Field №7
        value: (bit_field.value & 0b00010000000) != 0
      has_field_warning_desc: # Field №8
        value: (bit_field.value & 0b00100000000) != 0
      has_field_show_koran_tips_view: # Field №9
        value: (bit_field.value & 0b01000000000) != 0
      has_field_koran_tips_desc: # Field №10
        value: (bit_field.value & 0b10000000000) != 0
