NLP stuff above. 

## Everyone's a leader. But which type? (https://daviddatascience.shinyapps.io/covid_leader/) (in progress)

## Do masks help control COVID-19? (https://daviddatascience.shinyapps.io/coronavirus_mask/#section-graphs)

## What makes people use LPG? (pdf in the respository with the same title)

## One quick view of coronavirus's spread and cost of lives in the U.S. and the world (https://daviddatascience.shinyapps.io/coronavirus_oneview/#section-graphs)

Built to replace the one below, which loops over Google Trend 150+ times per load. Apparently Google doesn't allow that. This one should also add some value. 

## Monitor Americans' mental health under lockdown (https://daviddatascience.shinyapps.io/coronavirus_mental_health/) (may take some time to load)

Objective: More U.S. states are entering lockdown. Under lockdown, people can't go outside except for "essential" businesses. Such businesses often include pharmacy, hospital, and grocery that provide sustenance. They exclude dine-in restaurants, parks, and gyms where people usually gather to socialize. The graphs show how often people in each type of states -- locked down or not locked down -- search terms that represent change in their mental health and living environment. The map gives context by showing relative number of total coronavirus cases by state and by the two types. 

How the graphs change over time may reveal another cost of lockdown other than the economic: **the mental cost**. 

Source code above. 

*If the app shows an error, it means the gtrendR package has hit the limit (https://github.com/PMassicotte/gtrendsR/issues/166). Only suboptimal solutions seem to exist; I will investigate. Or I'll just build another dashboard without gtrendR. 

## Healthen.me (https://www.healthen.me)

Objective: Help solve and manage complex health conditions like diabetes, multiple sclerosis, etc. Make it intuitive. 

Ideation: Patient interviews, provider interviews, literature review, industry analysis (why PHRs failed, etc.), prototying (Sketch and Principle) and testing, etc. 

Solution: 
- Automatic benefit for patients from their data
- Automatic contextualization of questions
  - Need not repeat all their conditions, circumstances, etc. every time they ask a question
  - In multi-morbidity, patients have conditions that conflict with one another (food good for diabetes can be bad for hypothyroidism, for example), very important to get all the data out and do so easily
- Easy, intuitive interaction with their data
  - PHRs (WebMD PHR, etc.) failed because inputting data feels like a lot of work
- Data analytics (upcoming)

Lines of code: 1586

## Sown.me (https://www.sown.me)

Objective: Make social beneficial and productive. Separate social from looks, vanity, etc. 

Ideation: Interviews, literature review, industry analysis, prototying (Sketch and Principle) and testing, etc. In this case, most of all, looking at my own experience. 

Solution: 
- Set a goal and a starting point
  - This provides some sense of equality regardless of who the users are. Taking 10 steps is big enough of a goal if you are an Agent Orange survivor and your starting point is being unable to walk at all. 
- Share progress or problem. 
- Get feedback. 
- The progress or problem are paired with the starting point and goal, so that helpers know the context every time they help
- Users can view their goals and all their progress, as if viewing a storybook. Each goal is a story of their lives. 
- The number of times you help and share progress/problem is made explicit to encourage your keep doing so

Lines of code: 1182
