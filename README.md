# noltarium-documentation-theme

Welcome to your new Jekyll theme! In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes`, your sass files in `_sass` and any other assets in `assets`.

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "noltarium-documentation-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: noltarium-documentation-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install noltarium-documentation-theme

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development


## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


### docker build and starts

```
docker run -v .:/var/jekyll -p 4000:4000 $(docker build .  2>/dev/null | awk '/Successfully built/{print $NF}')
```
