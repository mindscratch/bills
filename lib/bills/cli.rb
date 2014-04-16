require 'thor'

module Bills
  class Cli < Thor
    def self.default_name
      # TODO create a default name
      "2014-05"
    end

    desc "new TEMPLATE", "create a new months data based on an existing template"
    long_desc <<-LONGDESC
    Create a new month for tracking bills and expenses
    based off the specified template.

    You can optionally specify a second parameter to name the
    new month. By default it'll be in the format YEAR-MONTH (such as 2014-05).

    > bills new data/2014-04.json 2014-07

    This example will create a new months data named "2014-07.json" and
    base it off of the data from "data/2014-04.json".
    LONGDESC
    option :name, default: self.default_name
    def new(template)
      name = options[:name] || "2014-05"
      puts "create new month template=#{template}, name=#{name}"
    end
  end
end
