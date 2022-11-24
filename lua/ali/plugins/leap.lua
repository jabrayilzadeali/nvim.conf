local status, leap = pcall(require, "leap")
if not status then
  return
end
-- leap.add_default_mappings()

leap.opts.case_sensitive = true
leap.opts.substitute_chars = { ['\r'] = '¬' }
leap.opts.special_keys.prev_target = { '<s-enter>', ',' }

-- -- The below settings make Leap's highlighting a bit closer to what you've been
-- -- used to in Lightspeed.
--
-- vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
-- vim.api.nvim_set_hl(0, 'LeapMatch', {
--   fg = 'white',  -- for light themes, set to 'black' or similar
--   bold = true,
--   nocombine = true,
-- })
-- leap.opts.highlight_unlabeled_phase_one_targets = true
