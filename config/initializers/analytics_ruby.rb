require 'segment/analytics'

Analytics = Segment::Analytics.new({
    write_key: 'xU4zVgz7WWJjn1GbWfr2lwjoIQYZMSPb',
    on_error: Proc.new { |status, msg| print msg }
})