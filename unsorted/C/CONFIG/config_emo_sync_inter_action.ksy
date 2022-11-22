types:
  config_emo_sync_inter_action:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: data_path
        type: aux_types::string
        if: has_field_data_path
      - id: phoneme_path
        type: aux_types::string
        if: has_field_phoneme_path
      - id: emotion_path
        type: aux_types::string
        if: has_field_emotion_path
      - id: mate_data_path
        type: aux_types::string
        if: has_field_mate_data_path
      - id: mate_phoneme_path
        type: aux_types::string
        if: has_field_mate_phoneme_path
      - id: mate_emotion_path
        type: aux_types::string
        if: has_field_mate_emotion_path
      - id: back_type
        type: enum__emo_back_type
        if: has_field_back_type
      - id: enable_blink
        type: u1
        if: has_field_enable_blink
      - id: data_path_hash_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_data_path_hash_list
      - id: phoneme_path_hash_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_phoneme_path_hash_list
      - id: emotion_path_hash_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_emotion_path_hash_list
      - id: mate_data_path_hash_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_mate_data_path_hash_list
      - id: mate_phoneme_path_hash_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_mate_phoneme_path_hash_list
      - id: mate_emotion_path_hash_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_mate_emotion_path_hash_list
    instances:
      has_field_data_path: # Field №0
        value: (bit_field.value & 0000001) != 0
      has_field_phoneme_path: # Field №1
        value: (bit_field.value & 0000010) != 0
      has_field_emotion_path: # Field №2
        value: (bit_field.value & 0000100) != 0
      has_field_mate_data_path: # Field №3
        value: (bit_field.value & 0001000) != 0
      has_field_mate_phoneme_path: # Field №4
        value: (bit_field.value & 0010000) != 0
      has_field_mate_emotion_path: # Field №5
        value: (bit_field.value & 0100000) != 0
      has_field_back_type: # Field №6
        value: (bit_field.value & 0b00000001000000) != 0
      has_field_enable_blink: # Field №7
        value: (bit_field.value & 0b00000010000000) != 0
      has_field_data_path_hash_list: # Field №8
        value: (bit_field.value & 0b00000100000000) != 0
      has_field_phoneme_path_hash_list: # Field №9
        value: (bit_field.value & 0b00001000000000) != 0
      has_field_emotion_path_hash_list: # Field №10
        value: (bit_field.value & 0b00010000000000) != 0
      has_field_mate_data_path_hash_list: # Field №11
        value: (bit_field.value & 0b00100000000000) != 0
      has_field_mate_phoneme_path_hash_list: # Field №12
        value: (bit_field.value & 0b01000000000000) != 0
      has_field_mate_emotion_path_hash_list: # Field №13
        value: (bit_field.value & 0b10000000000000) != 0
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
