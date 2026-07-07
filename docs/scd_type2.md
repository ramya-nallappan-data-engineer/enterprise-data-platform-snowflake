# Slowly Changing Dimension Type 2

This implementation preserves historical customer changes.

Business Rule:

If any customer attribute changes

↓

Current record expires

↓

New record inserted

↓

History maintained

Example

Customer 100

India

↓

Moves to Germany

↓

Old record expires

↓

New record inserted
