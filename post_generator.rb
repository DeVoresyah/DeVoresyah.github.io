# Generate a new jekyll blog post using prompts then place it in the _posts folder.

require 'active_support/inflector'

puts 'Enter the post title:'
title = gets.chomp
title.titleize

year = Time.now.strftime('%Y')
month = Time.now.strftime('%m')
day = Time.now.strftime('%d')

hyphen_date = "#{year.to_s}-#{month.to_s}-#{day.to_s}"
time = Time.now.strftime('%H:%M')

puts 'Enter the category:'
category = gets.chomp

puts 'Is this have tags? (y/N)'
is_tags = gets.chomp

post_has_tags = false

if is_tags == 'y'
  post_has_tags = true
end

sanitized_title = title.downcase.gsub(/[^a-z0-9\s]/i, '')

dirty_slug = sanitized_title.split(' ')
clean_slug = []

dirty_slug.each do |s|
  clean_slug << s
  clean_slug << '-'
end

clean_slug.pop

final_slug = clean_slug.join('')

# Create the _posts directory

system('mkdir', '_posts') unless File.exists?('_posts')

the_post_file_name = hyphen_date + '-' + final_slug.to_s + '.md'
the_post_file = File.new("_posts/#{the_post_file_name}", 'w')
the_post_file.puts('---')
the_post_file.puts("title: \"#{title}\"")
the_post_file.puts('author: DeVoresyah')
the_post_file.puts('layout: post')
the_post_file.puts("date: #{hyphen_date} #{time}")
the_post_file.puts("categories: #{category}")
the_post_file.puts('tags: ') if post_has_tags
the_post_file.puts('---')
the_post_file.puts('')
the_post_file.close

system('atom', "_posts/#{the_post_file_name}")
