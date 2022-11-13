meta:
  id: enum__gallery_progress_score_ui_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__gallery_progress_score_ui_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: gallery_progress_score_ui_type
enums:
  gallery_progress_score_ui_type:
    0: gallery_progress_score_ui_type_none
    1: gallery_progress_score_ui_type_buoyant_combat
    2: gallery_progress_score_ui_type_sumo_stage
    3: gallery_progress_score_ui_type_dig
