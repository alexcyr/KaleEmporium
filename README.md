# KaleEmporium

## Install Instructions

Begin By Pulling Down Repository
    
    '$   git clone https://github.com/alexandercyr/KaleEmporium'

## Next Install Middleman
"Middleman is distributed using the RubyGems package manager. This means you will need both the Ruby language runtime installed and RubyGems to begin using Middleman.

Mac OS X comes prepackaged with both Ruby and Rubygems, however, some of the Middleman's dependencies need to be compiled during installation and on OS X that requires Xcode Command Line Tools. Xcode can be installed from the terminal:

    '$ xcode-select --install'
Once you have Ruby and RubyGems up and running, execute the following from the command line:

    '$ gem install middleman'
    
For reference - https://middlemanapp.com/basics/install/

##In Terminal, Navigate to KaleEmporium Repository

   ' $ cd KaleEmporium'
    
##Install Necessary Gems

    '$ bundle install'
    
##Compile Files for Middleman

    '$ middleman build'

If this doesn't work, try updating ruby gems.
'gem install rubygems-update
update_rubygems
gem update --system'

If "middleman build" still doesn't work, skip to next step.
    
##Run Middleman

   ' $ bundle exec middleman'
    
In progress site can be viewed at http://127.0.0.1:4567

As you make changes to html and css, changes will update dynamically in browser.
