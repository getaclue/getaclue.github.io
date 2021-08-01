---
layout: post
title: "How to install Sequelize in ExpressJS app with SQLite"
categories:
  - javascript
  - nodejs
  - sequelize
  - expressjs
  - sqlite
tags: [javascript, nodejs, sequelize, expressjs, sqlite]
status: publish
type: post
published: true
meta: {}
image: "https://cdn-std.droplr.net/files/acc_603419/d6bd0B"
excerpt: "In this article I will show you how to install Sequelize for use in a basic ExpressJS app with SQLite."
dateCreated: 2020-03-16 19:33:52
datePublished: 2020-03-18 19:40:32
dateModified: 2020-03-18 19:40:32
---

Our goal for this project is to see this :

![Connection established.]({{"assets/images/2020-03-18/goal-sequelize.png" | relative_url}}){:style="max-width:100%"}

Start the project by making the src folder :

{% highlight shell %}
cd dev/nodejs
mkdir LeAppWriteup
cd LeAppWriteup && npm init
{% endhighlight %}

install the basic dependencies : express, [sequelize], and sqlite.

{% highlight shell %}
npm install --save express
npm install --save sequelize
npm install --save sqlite3
{% endhighlight %}

I wanted to configure the database connection first, so I made a folder called `config` and a file for database `db.js`. In the file I wrote the following:

```js
// config/db.js
const Sequelize = require("sequelize");

const db = new Sequelize({
  dialect: "sqlite",
  storage: "leappwriteup.sqlite3",
});

module.exports = db;
```

The configuration above basically follows the readme of the [sequelize] project. We are injecting the sequelize project, then we are instantiating a sequelize object that will use sqlite as its database. After this, I was ready to test the connections. All of the basic building blocks are there. The server, the database, and the connector. We test all three by running the following code in the `index.js` file (our start file) :

```js
// index.js
const express = require("express");
const router = express.Router();
const db = require("./config/db");

// start db
db.authenticate()
  .then((result) => {
    console.log("Connection established.");
  })
  .catch((error) => {
    console.log("Unable to connect to db: ", error);
  });

// start app
const app = express();

module.exports = app;
```

In the code above we are first injecting the dependent packages : express and database, the code for which is from our text above. We then call the database to establish a connection. If everything works as expected I will see `Connection established.` message. Otherwise, I will see the error for why it did not connect to the db. Finally, the express server is started and the entire app is exported for use elsewhere in the code.

{%highlight shell%}
node index.js
{%endhighlight%}

Run `node index.js` and see your progress. You should see the successful message. Congratulations, you have connected your server to the database and created an empty `sqlite3` database file. Otherwise, review your steps or send me a shout ;)

---

This part is totally optional. To interact with the database, we better start off with modeling our data as per [sequelize] documents. I did it by creating the following file in the folder `models` :

{%highlight shell%}
mkdir models
cd models && touch user.js
{%endhighlight%}

I then created the following code in the `user.js` file :

```js
// models/user.js
const sequelize = require("../config/db");
const { DataTypes } = require("sequelize");

const User = sequelize.define("User", {
  email: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  password: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  username: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  token: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
});

module.exports = User;
```

Finally, test all of the code together by interacting with the database. I will do so by creating a seed file and running it.

{%highlight shell%}
touch ../config/db.seed.js
{%endhighlight%}

In the seed file I want to connect to the database and add one user to the database and save it. After doing that, I want to run my project again to ensure that the connection to the database is established.

```js
// config/db.seed.js
const db = require("./db");
const User = require("../models/user");

const seed = async () => {
  await db.sync({ force: true });

  const password = `M<gC4['Dqv}G''X"Tg4XDbRrmWR46/ca`;
  const username = "getaclue";
  const email = "info@getaclue.me";
  const token = `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwibmFtZSI6ImluZm9AZ2V0YWNsdWUubWUiLCJpYXQiOjE1MTYyMzkwMjJ9.\_lImbjluzsOJSy-hlDzEOasZRSd8YuQ_9hBmmCvSvp0`;

  User.create({
    password: password,
    email: email,
    username: username,
    token: token,
  })
    .then((user) => {
      console.log("seeded user", user);
      User.findOne({ where: { email: `${user.email}` } })
        .then((user) => {
          console.log("found in db after adding");
          db.close();
        })
        .catch((error) => {
          console.error("error looking for new user in db: ", error);
          db.close();
        });
    })
    .catch((error) => {
      console.error("failed to seed, ", error);
      db.close();
    });
};

seed();
```

Once everything is typed out, you can feel free to test everything once again. I ran the follow commands and made sure everything worked as expected.

{%highlight shell%}
node config/db.seed.js
node index.js
{%endhighlight%}

Here is what your final folder structure should look like :

![Final file structure]({{"assets/images/2020-03-18/final_file_structure.png" | relative_url}}){:style="max-width:100%"}

I have installed [Sequelize] and SQLite in my ExpressJS project; established the connection between ExpressJS and SQLite via [Sequelize]; created User's table, added some data, and queried that data. From here on, steps like building out the api; authentication; and authorization can proceed.

[sequelize]: https://sequelize.org/v5/manual/getting-started.html
