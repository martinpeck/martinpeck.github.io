require "bundler/setup"
require "jekyll"
require 'yaml'


namespace :site do
  # Change your GitHub reponame
  GITHUB_ORGNAME = "martinpeck"
  GITHUB_REPONAME = "martinpeck.com"
  SITE_DIR = "_site"

  desc "Clone a shallow copy of the site from github"
  task :clone do
    `git clone --branch gh-pages --depth 1 git@github.com:#{GITHUB_ORGNAME}/#{GITHUB_REPONAME}.git _site`
  end

  desc "Fetch the latest version of the site from github"
  task :fetch do
    if File.exist?(File.join(SITE_DIR, '.git'))
      `git -C #{SITE_DIR} checkout -- .`
      `git -C #{SITE_DIR} clean -fdx`
      `git -C #{SITE_DIR} checkout gh-pages`
      puts "Pulling into '#{SITE_DIR}'..."
      # pull the latest version of the repo
      `git -C #{SITE_DIR} pull origin gh-pages`
    else
      FileUtils.rm_rf SITE_DIR
      # clone the repo
      Rake::Task['site:clone'].execute
    end
  end

  desc "Generate site using jekyll"
  task :generate => [:fetch] do
    puts "Building the Jekyll site..."
    Jekyll::Site.new(Jekyll.configuration).process
  end

  desc "Generate and publish blog to gh-pages"
  task :publish => [:generate] do
    puts "Publishing the site to github pages..."
    message = "Site updated at #{Time.now.utc}"

    # push the latest version of the site to github
    `git -C #{SITE_DIR} add --all`
    `git -C #{SITE_DIR} commit -m #{message.inspect}`
    `git -C #{SITE_DIR} push origin gh-pages`
    puts "The site is now available at: http://#{GITHUB_ORGNAME}.github.io/#{GITHUB_REPONAME}/"
  end
end
