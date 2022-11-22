types:
  disp__config_talent_mixin:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_talent_mixin
            1: add_ability
            2: modify_ability
            3: unlock_talent_param
            4: unlock_controller_conditions
            5: modify_skill_cd
            6: modify_skill_cost
            7: modify_skill_point
            8: add_talent_extra_level
            _: aux_types::error
