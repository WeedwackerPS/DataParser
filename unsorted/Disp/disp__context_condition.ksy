types:
  disp__context_condition:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: context_condition
            1: context_condition_and
            2: context_condition_or
            3: context_condition_not
            4: context_condition_quest_state
            5: context_condition_main_quest_state
            6: context_condition_main_quest_visible
            7: context_condition_chapter_quest_state
            8: context_condition_chapter_quest_visible
            9: context_condition_quest_global_var
            _: aux_types::error
