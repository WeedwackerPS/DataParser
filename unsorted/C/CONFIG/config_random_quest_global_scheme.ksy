types:
  config_random_quest_global_scheme:
    seq:
      - id: bit_field
        type: u1
      - id: talk_list
        type: array_of__config_random_talk_scheme__length_u
        if: has_field_talk_list
      - id: quest_list
        type: array_of__config_random_quest_scheme__length_u
        if: has_field_quest_list
    instances:
      has_field_talk_list: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_quest_list: # Field №1
        value: (bit_field & 0b10) != 0
