# simplecov-hashcov

Custom SimpleCov formatter to generate a hash of SimpleCov coverage with a callback.

## Usage

```Ruby
require 'simplecov'
require 'simplecov-hashcov'
Hashcov.config.after_format_callback = -> (output) {
  debugger # or whatever you want to do with the output
}
SimpleCov.start 'rails' do
  formatter SimpleCov::Formatter::HashcovFormatter
end

#Sample Output
{"Controllers"=>
  [["/home/sampo/ruby/worktimerr/app/controllers/application_controller.rb", 100.0],
   ["/home/sampo/ruby/worktimerr/app/controllers/home_controller.rb", 100.0],
   ["/home/sampo/ruby/worktimerr/app/controllers/time_entries_controller.rb", 96.0]],
 "Channels"=>
  [["/home/sampo/ruby/worktimerr/app/channels/application_cable/channel.rb", 0.0],
   ["/home/sampo/ruby/worktimerr/app/channels/application_cable/connection.rb", 100.0]],
 "Models"=>
  [["/home/sampo/ruby/worktimerr/app/models/application_record.rb", 100.0],
   ["/home/sampo/ruby/worktimerr/app/models/time_entry.rb", 100.0],
   ["/home/sampo/ruby/worktimerr/app/models/user.rb", 100.0]],
 "Mailers"=>[["/home/sampo/ruby/worktimerr/app/mailers/application_mailer.rb", 0.0]],
 "Helpers"=>
  [["/home/sampo/ruby/worktimerr/app/helpers/application_helper.rb", 100.0],
   ["/home/sampo/ruby/worktimerr/app/helpers/devise_helper.rb", 16.67],
   ["/home/sampo/ruby/worktimerr/app/helpers/home_helper.rb", 100.0],
   ["/home/sampo/ruby/worktimerr/app/helpers/time_entries_helper.rb", 100.0]],
 "Jobs"=>[["/home/sampo/ruby/worktimerr/app/jobs/application_job.rb", 0.0]],
 "Libraries"=>[],
 "Ungrouped"=>[["/home/sampo/ruby/worktimerr/app/components/navbar_component.rb", 100.0]]}
```

## Development

After checking out the repo, run `bundle` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sampokuokkanen/simplecov-hashcov. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/translate_self/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TranslateSelf project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/translate_self/blob/master/CODE_OF_CONDUCT.md).