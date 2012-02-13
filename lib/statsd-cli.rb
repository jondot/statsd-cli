require "statsd-cli/version"
require 'statsd'


module StatsdCLI
    class Runner
      OPS = %w{ increment decrement count timing }
      def run!(opts)
        args = resolve(opts)
        meth = args.shift
        ::Statsd.new(opts[:host]).__send__ meth, *args
      end

      def resolve(opts)
        raise "No operation '#{opts[:operation]}'.\nUse any of: #{OPS.inspect}." unless OPS.include? opts[:operation]
        raise "Please provide a metric." if opts[:metric].nil?

        res = [opts[:operation], opts[:metric]]

        if ["count", "timing"].include? opts[:operation]
          res << opts[:value].to_i
        end

        res << opts[:sample_rate].to_i if opts[:sample_rate]
        res
      end
    end
  end

