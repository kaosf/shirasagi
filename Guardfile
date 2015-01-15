# vim: filetype=ruby

group :red_green_refactor, halt_on_fail: false do
  # A sample Guardfile
  # More info at https://github.com/guard/guard#readme

  guard :rubocop, notification: true, cli: '--rails --format fuubar' do
    watch(/.+\.rb$/)
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end

guard 'brakeman', :run_on_start => true do
  watch(%r{^app/.+\.(erb|haml|rhtml|rb)$})
  watch(%r{^config/.+\.rb$})
  watch(%r{^lib/.+\.rb$})
  watch('Gemfile')
end

notification :tmux,
  display_message: true,
  timeout: 10,
  default_message_format: '%s >> %s',
  line_separator: ' > ',
  color_location: %w[status-left-bg pane-active-border-fg pane-border-fg],
  default_message_color: 'black',
  success: 'colour150',
  failure: 'colour174',
  pending: 'colour179',
  display_on_all_clients: false
