# Q0: Why is this error being thrown?
There is no Pokemon model
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are appearing from the seeds.rb file. Pokemon without trainer appear
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that redirects to the capture_path func passing the pokemon's id as a parameter
# Question 3: What would you name your own Pokemon?
Wrath
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
A path that required the pokemon's trainer
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It creates that displays an error message in it
# Give us feedback on the project and decal below!
It is very hard to debug. Little mistakes can prevent a lot of progress. Learning from mistakes helped a lot though.
# Extra credit: Link your Heroku deployed app
