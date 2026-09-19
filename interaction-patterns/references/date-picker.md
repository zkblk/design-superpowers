# Date Picker
**DEFAULT** Allow direct entry when users may know the date; a calendar is an aid, not automatically the only input.
**MUST** Communicate expected format when it matters.
**CONTEXTUAL** Separate day/month/year fields can improve error recovery/localization; calendars help when calendar context matters.
**MUST** Calendar dialogs define keyboard movement, current/selected date, navigation, focus entry/return and dismissal.
**AVOID** forcing month-by-month travel for distant dates or assuming one locale.
Test invalid dates, constraints, keyboard, mobile and localization.