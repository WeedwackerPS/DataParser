types:
  config_costume_info:
    seq:
      - id: bit_field
        type: u1
      - id: effects
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_effects
      - id: gadgets
        type: dict_of__aux_types__string_aux_types__string
        if: has_field_gadgets
      - id: audio
        type: config_costume_audio
        if: has_field_audio
    instances:
      has_field_effects: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_gadgets: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_audio: # Field №2
        value: (bit_field & 0b100) != 0
types:
  config_costume_audio:
    seq:
      - id: bit_field
        type: u1
      - id: wear_voice
        type: voice_trigger_identity
        if: has_field_wear_voice
    instances:
      has_field_wear_voice: # Field №0
        value: (bit_field & 0b1) != 0
