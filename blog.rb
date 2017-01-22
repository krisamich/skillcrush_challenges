class Blog

	@@total_posts = 0
	@@all_posts = []

	def self.all
		@@all_posts
	end

	def self.add(thing)
		@@all_posts << thing
		@@total_posts += 1
	end

	def self.current_count
		puts "There are currently #{@@total_posts} in my blog"
	end

	def self.publish
		@@all_posts.each do |post|
			puts "Title  :  #{post.get_title}"
			puts "Author  :  #{post.get_author}"
			puts "Publish Date  :  #{post.get_publish_date}"
			puts "Content  :\n #{post.get_content}"
		end
	end

end

class BlogPost < Blog

	def BlogPost.create
		post = new
		puts "Title: "
		post.set_title = gets.chomp
		puts "Author: "
		post.set_author = gets.chomp
		puts "Content: "
		post.set_content = gets
		post.set_publish_date = Time.now
		post.save
		puts "Do you want to create another post? [Y/N]"
		create if gets.chomp.upcase == 'Y'
	end

	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end

	def set_author=(author)
		@author = author
	end

	def get_author
		return @author
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_publish_date=(publish_date)
		@publish_date = publish_date
	end

	def get_publish_date
		return @publish_date
	end

	def save
		BlogPost.add(self)
	end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish