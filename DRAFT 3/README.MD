DRAFT 3

Changelog:
- SLS commands redo (*IN PROGRESS*)
  - Add a continuing function for each command
    - Called whenever there is text by itself after a command. E.g:
    ```
    <print[5,5]> --# Calls print's 'FUNCTION'
      hey! --# Calls print's 'CON_FUNCTION'
    </print> --# Calls print's 'INV_FUNCTION'
    ```
    - Also means users can create their own commands easily
  - Add a 'FIELD' entry for each button/checkbox/link so that the event handler can handle the mouse clicks on them
    - Requires their X, Y, W, H
- Additions to SLS commands (*IN PROGRESS*)
  - Button
    - Arguments: X, Y, LINK
    - Arguments: X, Y, W, H, LINK
  - Checkbox
    - Arguments: X, Y, State (default: false)
  - Image
    - Arguments: X, Y, Image Sharkle
- (Maybe) History (*NOT STARTED*)
- (Maybe) Shark Pages (Home/History/Settings/About) (*NOT STARTED*)
- Customisable language syntax (*COMPLETE*)
