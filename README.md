
     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 

To whom it may concern, 

I am honored that I have got a chance again to submit the test.
I was in US during period of first test for software program. 
That's why I couldn't submit the test you gave me. 
I am really sorry for being late.

Let me explain project I did.
I developed web application with ROR.

There are 4 controller.
1. comment (create , destroy)
2. post (new, create, index, show, edit, update, destroy)
3. session for log_in (create, destroy)
4. trip (new, create, index, show, destroy) 
5. user (create, index(for developer to check the list))

And there are 4 model. 
1. comment
2. post
3. trip
4. user

Moreover, I defined those things in sessions_helper
1. log_in
2. current_user (return user's account)
    --> @current_user ||= User.find_by(id: session[:user_id]) 
        We can get access DB only once. 
3. user_signed_in
    --> If user is signed in, return true. If not, return false.
4. log_out
    --> delete user_ID from session.


I followed the story in document.

--login--
you can log in on the top of web site. 
I used password_digest with gem 'bcrypt' for security.

--sign up--
If you don't have account, you can sign up by clicking sign up button. 
You will be asked to type email and password and name. 
Email should be unique. 
So I set the unique option for email. 

--upload picture--
To attach picture, I used gem 'carrierwave' and 'bootstrap-sass'.
If I have to upload on cloud, I can use AWS.

 
--Trip--
Anyone can get access the story with picture. 
But they are not supposed to comment. 
So I made a condition which user who did not login can't see comment area.

Moreover, when visitor wants to upload story, he or she will move to log_in page.

If he or she signs in, they can upload story and delete if an uploaded story is from them.

--comment-- 
comment is contained in trip.
Only people who log in can make comment. 
They can delete only comment they made.
But anyone can see the list of comments from other's.


--post--
And I made one more board for visitor. 
Anyone can get access on this board for information of traveling.
Anyone can edit it for better information.

I hope I don't miss anything to put information in README.

I want to say one more time, I am sorry for being late and really impressed to get a chance to submit this.
If you want to know more, plz email me. <-:

Thank you for taking time for this.
I am looking forward to hearing from you.

Sincerely,
HyeIn Kim 




