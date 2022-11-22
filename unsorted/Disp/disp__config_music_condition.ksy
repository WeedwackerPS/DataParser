types:
  disp__config_music_condition:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_music_condition
            1: config_music_true_condition
            2: config_music_negative_condition
            3: config_music_binary_condition
            4: config_music_parameter_condition
            5: config_music_conjunctive_condition
            6: config_music_disjunctive_condition
            7: config_music_int32condition
            8: config_music_u_int32condition
            9: config_music_u_int32multi_condition
            10: config_music_single_condition
            11: config_music_double_condition
            12: config_music_boolean_condition
            13: config_music_string_condition
            14: config_music_u_int32list_condition
            15: config_music_int32equality_condition
            16: config_music_int32inequality_condition
            17: config_music_int32greater_than_condition
            18: config_music_int32less_than_condition
            19: config_music_int32no_greater_than_condition
            20: config_music_int32no_less_than_condition
            21: config_music_u_int32equality_condition
            22: config_music_u_int32inequality_condition
            23: config_music_u_int32greater_than_condition
            24: config_music_u_int32less_than_condition
            25: config_music_u_int32no_greater_than_condition
            26: config_music_u_int32no_less_than_condition
            27: config_music_single_equality_condition
            28: config_music_single_inequality_condition
            29: config_music_single_greater_than_condition
            30: config_music_single_less_than_condition
            31: config_music_single_no_greater_than_condition
            32: config_music_single_no_less_than_condition
            33: config_music_double_equality_condition
            34: config_music_double_inequality_condition
            35: config_music_double_greater_than_condition
            36: config_music_double_less_than_condition
            37: config_music_double_no_greater_than_condition
            38: config_music_double_no_less_than_condition
            39: config_music_string_equality_condition
            40: config_music_string_containment_condition
            41: config_music_u_int32list_emptiness_condition
            42: config_music_u_int32list_member_condition
            43: config_music_u_int32list_multi_member_condition
            44: config_music_u_int32list_presence_condition
            45: config_music_u_int32list_absence_condition
            46: config_music_u_int32list_all_presence_condition
            47: config_music_u_int32list_none_presence_condition
            48: config_music_u_int32list_partial_presence_condition
            _: aux_types::error
