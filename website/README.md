# website

A simple portfolio website hosted on github

## To replicate this project

1. Clone the repository
```
git clone git@github.com:Varun487/Varun487.git
```

2. Add your git username and config to file `.github/workflows/deploy-gh-pages.yml`

3. Change `website/src/assets/data.json` to include your webite's data

4. Change the `publicPath` config in file `website/vue.config.js`

5. Project setup
```
npm install
```

6. Compiles and hot-reloads for development
```
npm run serve
```

7. Push code to github repository to deply your website.


## Additional commands

1. Compiles and minifies for production
```
npm run build
```

2. Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
