DRAFT 3

Changelog:
- SLS commands redo (*IN PROGRESS*)
  - Add a continuing function for each command (*COMPLETE*)
    - Called whenever there is text by itself after a command. E.g:
    ```
    <print[5,5]> --# Calls print's 'FUNCTION'
      hey! --# Calls print's 'CON_FUNCTION'
    </print> --# Calls print's 'INV_FUNCTION'
    ```
    - Also means users can create their own commands easily
  - Fix 'print' and 'write' so that they don't have to take arguments
    - E.g.
    ```
    <print> --# Uses current cursor position
      hey!
    </print>
    ```
  - Add a 'FIELD' entry for each button/checkbox/link so that the event handler can handle the mouse clicks on them (*NOT STARTED*)
    - Requires their X, Y, W, H
- Additions to SLS commands (*IN PROGRESS*)
  - Button (*IN PROGRESS*)
    - Arguments: X, Y, LINK
    - Arguments: X, Y, W, H, LINK
  - Checkbox (*NOT STARTED*)
    - Arguments: X, Y, State (default: false)
  - Image (*NOT STARTED*)
    - Arguments: X, Y, Image Sharkle
- Log (*IN PROGRESS*)
  - Errors (*COMPLETE*)
  - History (*IN PROGRESS*)
- Shark Pages (Home/History/Settings/About) (*NOT STARTED*)
