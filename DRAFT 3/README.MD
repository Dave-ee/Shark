DRAFT 3

Planned: 
- SLS commands redo
  - Add a continuing function for each command
    - Called whenever there is text by itself after a command. E.g:
    ```
    <print[5,5]>
      hey! --# Calls print's 'CON_FUNCTION'
    </print>
    ```
    - Also means users can create their own commands easily
  - Add a 'FIELD' entry for each button/checkbox/link so that the event handler can handle the mouse clicks on them
    - Requires their X, Y, W, H
- Additions to SLS commands
  - Button (drawing done, awaiting event handler)
    - Arguments: X, Y
  - Checkbox
    - Arguments: X, Y, State (default: false)
  - Image
    - Arguments: X, Y, Image Sharkle
- (Maybe) History
- (Maybe) Shark Pages (Home/History/Settings/About)
