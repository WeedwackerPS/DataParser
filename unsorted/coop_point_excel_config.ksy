types:
  coop_point_excel_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: chapter_id
        type: aux_types::vlq_base128_le_u
        if: has_field_chapter_id
      - id: type
        type: enum__coop_point_type
        if: has_field_type
      - id: accept_quest
        type: aux_types::vlq_base128_le_u
        if: has_field_accept_quest
      - id: post_point_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_post_point_list
      - id: point_name
        type: aux_types::vlq_base128_le_u
        if: has_field_point_name
      - id: point_dec
        type: aux_types::vlq_base128_le_u
        if: has_field_point_dec
      - id: point_pos_id
        type: aux_types::vlq_base128_le_u
        if: has_field_point_pos_id
      - id: photo_male_hash_suffix
        type: aux_types::vlq_base128_le_u
        if: has_field_photo_male_hash
      - id: photo_male_hash_pre
        type: s1
        if: has_field_photo_male_hash
      - id: photo_female_hash_suffix
        type: aux_types::vlq_base128_le_u
        if: has_field_photo_female_hash
      - id: photo_female_hash_pre
        type: s1
        if: has_field_photo_female_hash
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_chapter_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_type: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_accept_quest: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_post_point_list: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_point_name: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_point_dec: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_point_pos_id: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_photo_male_hash: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_photo_female_hash: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
