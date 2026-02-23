function Div(div)
  if div.classes:includes("callout-intro") then
    return quarto.Callout({
      type     = "intro",
      title    = div.attributes["title"] or "Learning objectives",
      content  = div.content,
      icon     = true,
      collapse = false
    })
  end
end

-- Voeg CSS toe aan de metadata
function Meta(meta)
  local css_content = [[
div.callout-intro.callout {
  border-left-color: #7E7E7E;
}
div.callout-intro.callout-style-default > .callout-header {
  background-color: #D3D3D3;
}
div.callout-intro.callout-titled .callout-icon::before {
  content: "🎯";
}
]]

  if meta['header-includes'] == nil then
    meta['header-includes'] = pandoc.MetaList{}
  end

  table.insert(meta['header-includes'],
    pandoc.RawBlock('html', '<style>\n' .. css_content .. '\n</style>'))

  return meta
end
