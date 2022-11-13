meta:
  id: enum__proud_life_effect_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__proud_life_effect_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: proud_life_effect_type
enums:
  proud_life_effect_type:
    0: proud_effect_none
    1: proud_effect_combine_return_material
    2: proud_effect_combine_multiply_output
    3: proud_effect_combine_extra_output
    4: proud_effect_combine_add_extra_prob
    101: proud_effect_cook_extra_proficiency
    102: proud_effect_cook_widen_judge_area
    103: proud_effect_cook_add_bonus_prob
    104: proud_effect_cook_perfect_multi_output
    105: proud_effect_cook_prob_multi_output
    106: proud_effect_cook_can_not_cook
    203: proud_effect_forge_reduce_time
    204: proud_effect_forge_add_extra_prob
    205: proud_effect_forge_return_material
    301: proud_effect_expedition_shorten_time
    401: proud_effect_furniture_make_return_material
    501: proud_effect_weapon_promote_reduce_scoin
    601: proud_effect_fishing_extra_output
