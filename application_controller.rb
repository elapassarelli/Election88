require 'bundler'
Bundler.require
require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require_relative 'models/CanVote.rb'

# require_relative 'models/database.rb'
# require_relative 'models/Candidates.rb'
# require 'sqlite3'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :home
  end

  # begin
  #       db = SQLite3::Database.new ":memory:"
  #       puts db.get_first_value 'SELECT SQLITE_VERSION()'
  #
  #       rescue SQLite3::Exception => e
  #
  #       puts "Exception occurred"
  #       puts e
  #
  #       ensure
  #       db.close if db
  #       end
  #
  # begin
  #
  #           db = SQLite3::Database.open "mydatabase.db"
  #           db.execute "CREATE TABLE IF NOT EXISTS ElectionTable(Id INTEGER PRIMARY KEY,
  #               Election TEXT, Candidate TEXT, votes int, Voters TEXT)"
  #           db.execute "INSERT INTO ElectionTable VALUES(1,'Presidential','Trump', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(2,'Presidential','Clinton', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(3,'Presidential','Johnson', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(4,'Presidential','Stein', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(5,'Presidential','Duncan', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(6,'Senate','Portman', 0, '')"
  #           db.execute "INSERT INTO ElectionTable VALUES(7,'Senate','Strickland', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(8,'Senate','Demare', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(9,'Senate','Rupert', 0,'')"
  #           db.execute "INSERT INTO ElectionTable VALUES(10,'Senate','Conners', 0,'')"
  #
  #       rescue SQLite3::Exception => e
  #
  #           puts "Exception occurred"
  #           puts e
  #
  #       ensure
  #           db.close if db
  # end
  # #
  # Count = Candidates.new

post '/process' do
    @array = ["names", "othernames"]
    @username = params[:username]
    @answer = can_vote(@username,@array)
    if @answer == true
    erb :votingpage
    else
    erb :novote
    end
  end

get '/donevoting' do
#     # @presidentvote = params[:president]
#     # update_pvotes(@presidentvote)
#     # Pony.mail(:to => 'hbelection2016@usa.com', :from => 'epassarelli18@hb.edu', :subject => @presidentvote, :body => @username)
# #       Mail.deliver do
# #     from     'epassarelli18@hb.edu'
# #     to       'hbelection2016@usa.com'
# #     subject  'Hi'
# #     body     'Hi'
# # end
    erb :donevoting
  end


# post '/voting2' do
#     @senatevote = params[:senate]
#     # update_svotes(@senatevote)
#     # Pony.mail(:to => 'hbelection2016@usa.com', :from => 'epassarelli18@hb.edu', :subject => @senatevote, :body => @username)
#     erb :donevoting
# end

  post '/admin' do
    @adminkey = params[:key]
    @right = is_admin(@adminkey)
    if @right == true
    erb :admin
    else
    erb :wrongkey
    end
  end

end
