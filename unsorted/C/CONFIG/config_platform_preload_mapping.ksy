types:
  config_platform_preload_mapping:
    seq:
      - id: bit_field
        type: u1
      - id: editor
        type: dict_of__enum__config_preload_type_array_of__enum__config_preload_type__length_u
        if: has_field_editor
      - id: win
        type: dict_of__enum__config_preload_type_array_of__enum__config_preload_type__length_u
        if: has_field_win
      - id: android
        type: dict_of__enum__config_preload_type_array_of__enum__config_preload_type__length_u
        if: has_field_android
      - id: ps4
        type: dict_of__enum__config_preload_type_array_of__enum__config_preload_type__length_u
        if: has_field_ps4
      - id: ios
        type: dict_of__enum__config_preload_type_array_of__enum__config_preload_type__length_u
        if: has_field_ios
    instances:
      has_field_editor: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_win: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_android: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_ps4: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_ios: # Field №4
        value: (bit_field & 0b10000) != 0
