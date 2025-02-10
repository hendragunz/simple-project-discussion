# ABOUT THIS APP

This is small app to demo simple Hotwire + Stimulus to demo how the real-time project' discussion between users. 
To see if the real-time discussion works, please open with 2 browsers and login with different users. 

# Dummy users

You can use this for login: 
- one@example.com
- two@example.com
- three@example.com
- four@example.com
- five@example.com

The password should be "password", as simple as that :-) 


# Screenshots

<img width="1322" alt="Screenshot 2025-02-10 at 23 18 53" src="https://github.com/user-attachments/assets/7952bdf2-de36-4aad-89ad-0c5d9d8617c9" />
<img width="1268" alt="Screenshot 2025-02-10 at 23 18 10" src="https://github.com/user-attachments/assets/b36ebd75-ffcf-4428-9be3-a7e45353ba9e" />


# Setup Local
- ruby 3.3.7
- bundle install
- setup database (primary using postgres, cache + queue + cable using sqlite3)
- run `rails db:fixtures:load`, please check fixtures.yml for dummy data
- next you can login and try to add some comment to the project like screenshot above
- please try with 2 - 3 different browser to see realtime project discussion 

