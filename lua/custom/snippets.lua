local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('lua', {
  s('hello', {
    t 'print("hello world")',
  }),
})

ls.add_snippets('go', {
  s(
    'qq',
    fmt(
      [[
      {{
        "{}",
        "{}",
        "{}",
      }},
      {}
    ]],
      { i(1), i(2), i(3), i(4) }
    )
  ),
})
