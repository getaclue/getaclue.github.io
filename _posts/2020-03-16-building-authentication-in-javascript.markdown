---
layout: post
title: "What to do before building authentication with ExpressJS app"
categories:
  - javascript
  - nodejs
  - expressjs
  - easy
tags: [javascript, nodejs, expressjs, easy]
status: publish
type: post
published: true
meta: {}
image: "https://cdn-std.droplr.net/files/acc_603419/kkB0eL"
excerpt: "In this article I will walk through my thought process for building authentication with ExpressJS app"
dateCreated: 2020-03-16 05:43:49
datePublished: 2020-03-16 08:43:49
dateModified: 2020-03-16 08:43:49
---

This weekend I wanted to play with [tailwindcss] and what better way to do it then with a project. My project was going to be simple : **write a tutorial on authentication in nodejs apps**. And I did complete the project, but I struggled to make it easy as possible to follow. I wrote this just so I could break down the next few entries. I ended up using a few packages that I absolutely couldn't go without and that added to the scope. I also spent lots of time on research and seeing what is out there :

![lots of tabs]({{"assets/images/2020-03-16/lots_of_tabs.png" | relative_url}}){:style="max-width:100%"}

I figured that a good post prior to me re-doing the project would be to talk about thinking of authentication. I will be breaking down the project into smaller parts. I figured in this post, I will outline what I am thinking about.

## Authentication

### Background refresher

First thing that I did when beginning the project was go to [OWASP] and remind myself of the common pitfalls in authentication, and password storage. After all, if I am putting a tutorial out there I want it to be somewhat secure.

Links used in background refresher:

- [https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)
- [https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html)
- [https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)

### Decision time

I knew that I wanted to store the information in a database. I did not want to rely on a third party service. So, for data processing and database communication I opted for [sequilize] package. [Sequilize] is great in that you can switch databases and maintain data integrity because you describe all of your data in code in one place.

For this tutorial, I wanted to store username, email, and password. I did not want to store the password as plaintext for this tutorial even though I was trying to keep the tutorial simple. My goto solution for password encryption is usually the bcrypt algorithm. So, for this project, naturally, I decided to use the [bcrypt] package.

I couldn't decide if I wanted to teach about [jwt] tokens or session [cookies]. Afterall, nowadays you need to be comfortable in both. So, I opted out for storing jwt token in the cookies. Using cookies is usually my default go-to because the technology is proven, safe, and reliable. Cookies have been here since the beginning on web apps.

However, as I proceeded through my project, I realized that this went beyond the scope of my initial tutorial. This added a level of authorization to our authentication tutorial. I finished this authorization not realizing that I will have to backtrack in my actual write up and create several tutorials out of it.

### How to connect Sequilize to ExpressJS app

This tutorial will talk about the setup of sequilize and a simple model of our user that will be used in follow up tutorials. The user will contain username, password, and email attributes. Maybe... I will add token attribute and confirmation_token attributes for confirmation steps. Haven't fully decided on this.

### How to add authentication to ExpressJS app with Sequilize

For the sake of my tutorial authentication will be split into : user sign up, user login, and user password reset. I will have to mention about [bcrypt].

### How to add authorization to ExpressJS app with Sequilize

For this tutorial I will be mentioning the usage of [jwt] and session [cookies]. These details kind of depend on the clients that will be using our API and whether or not we have an API. I used both to show the different ways of implementing authorization. Personally I prefer cookies as they have been battle tested in various environments, but sometimes for things like mobile apps, you need to use something like [jwt]. I simply saved my generated [jwt] token in our [cookies] so that we can play with both :)

Here is what it looked like when finished :

![sign in]({{"assets/images/2020-03-16/sign_in.png" | relative_url}}){:style="max-width:100%"}
![sign up]({{"assets/images/2020-03-16/sign_up.png" | relative_url}}){:style="max-width:100%"}
![forgot password]({{"assets/images/2020-03-16/forgot_password.png" | relative_url}}){:style="max-width:100%"}
![profile]({{"assets/images/2020-03-16/profile.png" | relative_url}}){:style="max-width:100%"}

I am not sure if I will have this UI for the written up tutorials or if I will come up with something else.

---

PS: When most people think of authentication they actually are referring to authorization. So... you may have to explain this to your client. It is a good idea to have a walk through of the components that you need to build. You can create deliverables out of them.

The example above shows the authorization and authentication of a simple user profile using [jwt] and [cookies]. The information is stored in a sqlite3 database in the local directory and is using [sequilize] driver for data access. The ui is build using [tailwindcss] (I have a tutorial on that tailwindcss which you can visit [here]). With the help of [jwt] our software is also ready to create an api for mobile or desktop clients if there was ever a need.

I was not tracking my time on this but it says I used about 3 hours this weekend in VS Code. Which includes writing in VS Code as well. So maybe divide in half? About 1 hour or 1.5 hours on this code for sure I would think.

links that I may or may not have used (ie tabs open at the time of writing this article):

- [link](https://www.google.com/search?newwindow=1&ei=TX5tXpKkC-Gc_Qb9oKyoDQ&q=web+authorization&oq=web+authorization&gs_l=psy-ab.3..0l3j0i22i30l7.74208935.74213872..74213997...7.4..2.512.3222.11j2j3j1j1j1......0....1..gws-wiz.......0i71j0i67j0i131j0i273j0i10.8rqUb2ZDcL4&ved=0ahUKEwjS_tTjo5voAhVhTt8KHX0QC9UQ4dUDCAs&uact=5)
- [link](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Authorization)
- [link](https://owasp.org/www-project-top-ten/)
- [link](https://owasp.org/www-project-top-ten/OWASP_Top_Ten_2017/Top_10-2017_A2-Broken_Authentication)
- [link](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)
- [link](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html#modern-algorithms)
- [link](https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html)
- [link](https://www.google.com/search?q=nodejs+authorization&oq=nodejs+authorization&aqs=chrome..69i57.6185j0j7&sourceid=chrome&ie=UTF-8)
- [link](https://jasonwatmore.com/post/2018/11/28/nodejs-role-based-authorization-tutorial-with-example-api)
- [link](https://www.google.com/search?newwindow=1&ei=66VuXo_4NpHdtAbsxbhA&q=bcrypt+javascript&oq=bcrypt+javascript&gs_l=psy-ab.3..0l4j0i22i30l6.3087.4669..4924...0.2..0.281.1501.7j5j1......0....1..gws-wiz.......0i71j0i67.TeG0giixnYk&ved=0ahUKEwjPmYvavZ3oAhWRLs0KHewiDggQ4dUDCAs&uact=5)
- [link](https://www.npmjs.com/package/bcrypt)
- [link](https://www.google.com/search?newwindow=1&q=middleware+node+j&spell=1&sa=X&ved=2ahUKEwip8eafwp3oAhVzds0KHelUDW0QBSgAegQIDRAm)
- [link](https://expressjs.com/en/resources/middleware/cookie-session.html)
- [link](https://www.google.com/search?q=jwt+res&oq=jwt+res&aqs=chrome..69i57.3131j0j7&sourceid=chrome&ie=UTF-8)
- [link](https://stackabuse.com/authentication-and-authorization-with-jwts-in-express-js/)
- [link](https://www.sohamkamani.com/blog/javascript/2019-03-29-node-jwt-authentication/)
- [link](https://www.npmjs.com/package/jsonwebtoken)
- [link](https://www.google.com/search?q=nodejs+response+authorization+header&oq=nodejs+response+authorization+header&aqs=chrome..69i57.8306j0j7&sourceid=chrome&ie=UTF-8)
- [link](https://stackoverflow.com/questions/34589272/how-to-set-authorization-headers-with-nodejs-and-express)
- [link](https://www.google.com/search?q=cookie-parser&oq=cookie-parser&aqs=chrome..69i57j69i60.247j0j7&sourceid=chrome&ie=UTF-8)
- [link](https://riptutorial.com/node-js/example/21767/setting-cookies-with-cookie-parser)
- [link](https://www.tutorialspoint.com/expressjs/expressjs_cookies.htm)
- [link](https://handlebarsjs.com/guide/builtin-helpers.html#if)
- [link](https://tailwindcss.com/components/forms)
- [link](https://www.google.com/search?q=nodejs+redirect+response&oq=nodejs+redirect+response&aqs=chrome..69i57.2927j0j7&sourceid=chrome&ie=UTF-8)
- [link](https://stackoverflow.com/questions/11355366/how-to-redirect-users-browser-url-to-a-different-page-in-nodejs)
- [link](https://www.google.com/search?q=build+middleweare&oq=build+middleweare&aqs=chrome..69i57.2198j0j7&sourceid=chrome&ie=UTF-8)
- [link](https://expressjs.com/en/resources/middleware.html)
- [link](https://expressjs.com/en/resources/middleware/cookie-parser.html)
- [link](https://github.com/expressjs/cookie-parser/blob/master/test/cookieParser.js)
- [link](https://github.com/sequelize/sequelize)
- [link](https://sequelize.org/master/manual/polymorphic-associations.html)
- [link](https://sequelize.org/master/manual/model-querying-basics.html)
- [link](https://stackoverflow.com/questions/40076638/compare-passwords-bcryptjs/40077486)
- [link](https://www.npmjs.com/package/bcrypt)
- [link](https://teamtreehouse.com/library/install-and-use-sequelize-cli)
- [link](https://medium.com/@zhhjoseph/getting-started-with-sequelize-dd6045f366e6)
- [link](https://openclassrooms.com/en/courses/5614116-go-full-stack-with-node-js-express-and-mongodb/5656301-set-up-authentication-middleware)
- [link](https://stackabuse.com/handling-authentication-in-express-js/)
- [link](https://stackabuse.com/implementing-user-authentication-the-right-way/)
- [link](https://github.com/jkasun/stack-abuse-express-authentication/blob/master/app.js)

[tailwindcss]: https://tailwindcss.com/
[owasp]: https://owasp.org/www-project-top-ten/
[sequilize]: https://sequelize.org
[bcrypt]: https://www.npmjs.com/package/bcrypt
[cookies]: https://expressjs.com/en/resources/middleware/cookie-parser.html
[jwt]: https://www.npmjs.com/package/jsonwebtoken
[here]: https://getaclue.me/2020/03/13/javascript-nodejs-express-tailwind
