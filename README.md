# CardDemo

Quick demo to answer to https://www.reddit.com/r/elixir/comments/u4s2ic/how_can_i_create_tiles_on_my_elixir_landing_page/

## Requirements
* Normal Phoenix application (this one was created with mix phx.new card_demo --no-ecto --no-mailer )
* Add tailwind dependency to mix.exs, follow https://github.com/phoenixframework/tailwind for more instructions

## Relevant code:
* All styling in app.css
* Template lib/card_demo_web/templates/page/index.html.heex has all the UI logic
* Data generated at lib/card_demo_web/controllers/page_controller.ex

## End result

![demo.png](demo.png)
