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
    @array = ["cschwartz17",
    "ljackson17",
    "epicht17",
    "aadornato19",
    "cwellener17",
    "mlancaster17"
    ,"Mberk17"
    ,"gbeneke18"
    ,"dsasidhar18"
    ,"loglesbee17"
    ,"lmedarametla18"
    ,"nkumar19"
    ,"kkian18"
    ,"lhollingsworth18"
    ,"kdeegan17",
    "nthornton19",
    "ccoyne17",
    "yyang18",
    "rlipford19",
    "sli20",
    "ndevireddy20",
    "esemarjian20",
    "mleneghan20",
    "shusain19",
    "hbrooks20",
    "aalaeddini20",
    "jeverett20",
    "vmuvva20",
    "agleydura20",
    'isutton19'
    ,'ssangani20'
    ,'mclemens20'
    ,"roet20"
    ,"kdoherty19"
    ,"fblumin17"
    ,"gfurlich19",
    "ayoung18",
    "mbruce17"
    ,"lconnors18"
    ,"tpendekanti20",
    "jmueller",
    "vschriefer19",
    "vadornato17",
    "ahammond17",
    "kgirish18",
    "hgalbincea17"
    ,"hkeyerleber17"
    ,"ksnow18"
    ,"rmcmullen18"
    ,"lharrison18"
    ,"arazmi18"
    ,"efelderman18"
    ,"cmckenna19"
    ,"mgleydura18"
    ,"ajones17"
    ,"cschwartz17"
    ,"cmillican17"
    ,"mfresco18"
    ,"gcarson19"
    ,"pkumar17"
    ,"fuddin17"
    ,"abrown17"
    ,"dmurthy18"
    ,"lmazzoli19"
    ,'aseger18'
    ,'ckaufman19'
    ,'rbrady17'
    ,'shahn17'
    ,'mbutler17'
    ,'nakintunde18'
    ,'apersky17'
    ,'nmalik19'
    ,'ejones20'
    ,'erego17'
    ,'tkim18'
    ,'rwang17'
    ,'icarrington18'
    ,'aschwabl20'
    ,'szhou18'
    ,'lgillinov17'
    ,'kschwartz19'
    ,'mbuescher'
    ,'jhahn17'
    ,'kmullen17'
    ,'sclark18'
    ,'bparsons18'
    ,'kkresock20'
    ,'czajaczkowski17'
  ,'crichards17'
  ,'kryan19'
  ,'akalra19'
  ,'ycarmi19'
  ,'gamjad19'
  ,'adeutchman19'
  ,'bsparacia20'
  ,'jschilz20'
  ,'msantelli20'
  ,'sheakelly'
  ,'kfreiherrmann18'
  ,'ocruz17'
  ,'bbai18'
  ,'cyohann18'
  ,'mbroihier17'
  ,'msearby20'
  ,'mqiang19'
  ,'achauvette17'
  ,'estack17'
  ,'akeresztesy18'
  ,'mpatton'
  ,'sjagetia18'
  ,'rmoazami18'
  ,'svasavada20'
  ,'akeresztesy20'
  ,'dgitiforooz19'
  ,'amenon17'
  ,'hbasali20'
  ,'cwilson20'
  ,'clis19'
  ,'crackley18'
  ,'lchesler17'
  ,'jabrams20'
  ,'jbruening20'
  ,'cliu19'
  ,'mgehrlein17'
  ,'sbindra19'
  ,'kkostos20'
  ,'gbeedles19'
  ,'ljackson17'
  ,'vmischka18'
  ,'lserrano18'
  ,'jberick19'
  ,'adevito17'
  ,'jsutton19'
  ,'azunich20'
  ,'abeyer19'
  ,'cesteves19'
  ,'lhays18'
  ,'clettrich17'
  ,'ssacks18'
  ,'mbyrley19'
  ,'jwang19'
  ,'arazmi20'
  ,'bwynocker20'
  ,'sli19'
  ,'sfurth17'
  ,'hmarkowitz20'
  ,'gegan18'
  ,'mkilbane19'
  ,'jblumin20'
  ,'ekazazic20'
  ,'jhill19'
  ,'ngillinov20'
  ,'agarrow20'
  ,'akalahasti17'
  ,'srose18'
  ,'gprotasiewicz17'
  ,'abaig20'
  ,'lghosh17'
  ,'ghutchinson18'
  ,'akabat20'
  ,'adewindt17'
  ,'dhughes17'
  ,'cmartens17'
  ,'therrick17'
  ,'cparsons19'
  ,'mamjad18'
  ,'alewandowski18'
  ,'svemparala17'
  ,'ghomany17'
  ,'nbruckner17'
  ,'czhao18'
  ,'skaur18'
  ,'eyoung17'
  ,'kgirish18'
  ,'kference19'
  ,'mkelly19'
  ,'sowens18'
  ,'epicht17'
  ,'exu18'
  ,'mpaine17'
  ,'kbradley17'
  ,'eborrow18'
  ,'myin18'
  ,'eyeh18'
  ,'mcoughlin17'
  ,'jjavorsky17'
  ,'aklimek18'
  ,'amussey18'
  ,'hschmidt19'
  ,'ewarren20'
  ,'fsayed19'
  ,'shanna20'
  ,'sscott17'
  ,'arede18'
  ,'ikottapalli18'
  ,'ajoyce19'
  ,'skaiser19'
  ,'jeverett20'
  ,'lstineman'
  ,'mmiluk18'
  ,'axin19'
  ,'hfroimson18'
  ,'lborden20'
  ,'cfallon20'
  ,'sfreeman19'
  ,'jmoreno18'
  ,'cstephenson20'
  ,'afrodyma18'
  ,'hwasser18'
  ,'scurrier18'
  ,'aanderson19'
  ,'eroberto18'
  ,'cvoinovich18'
  ,'acalhoun19'
  ,'hbrooks20'
  ,'jdoak19'
  ,'klawson20'
  ,'ssadler17'
  ,'rsharma18'
  ,'ekahn18'
  ,'agleydura20'
  ,'gmajhail20'
  ,'lgratto18'
  ,'aborseth17'
  ,'cpasserell17'
  ,'irucker19'
  ,'ocruz17'
  ,'jschilz20'
  ,'ksommerfeld18'
  ,'khaffke20'
  ,'dmalkin20'
  ,'unregistered']
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
#     # Pony.mail(:to => 'hbelection20'16@usa.com', :from => 'epassarelli18@hb.edu', :subject => @presidentvote, :body => @username)
# #       Mail.deliver do
# #     from     'epassarelli18@hb.edu'
# #     to       'hbelection20'16@usa.com'
# #     subject  'Hi'
# #     body     'Hi'
# # end
    erb :donevoting
  end


# post '/voting2' do
#     @senatevote = params[:senate]
#     # update_svotes(@senatevote)
#     # Pony.mail(:to => 'hbelection20"16@usa.com', :from => 'epassarelli18@hb.edu', :subject => @senatevote, :body => @username)
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
