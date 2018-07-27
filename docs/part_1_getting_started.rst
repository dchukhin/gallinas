Getting Started
===============

The app we'll be building will take the data about restaurants from an API and
display it in the front-end using React.
Here are some things to note:
 - the HTML file that the React app is in is templates/kuri/homepage.html. You'll
   see that the file does not have much code in it, except for a <div id="app">
   and a <script>. The <div> is where the React app will be initialized into,
   and the <script> loads all of the JavaScript files, so they can be loaded by
   the browser.
 - All of the JavaScript files are bundled together into a bundle.js. When you
   work on the tutorial and make changes to the JavaScript files, you will need
   to re-bundle them by running the following command::

    npm build

   Then, reload the page to see your changes.

Now, on to the tutorial!
