<template>
  <div>
    <h1>Projects</h1>
    <div class="row">
      <div v-for="project in projects" :key="project['title']" class="col-md-4 mb-5">
        <div class="card h-100">
          <img :src="project['image']" class="card-img-top" :alt="project['title']">
          <div class="card-body">
            <h3 class="card-title">{{ project['title'] }}</h3>
            <h5 class="card-title">{{ project['brief'] }}</h5>
            <p class="card-text">
              <ul>
                <li v-for="line in project['description']" :key="line">{{ line }}</li>
              </ul>
            </p>
            <span v-for="word in project['keywords']" :key="word">
              <span class="badge rounded-pill text-bg-secondary">{{ word }}</span>
              &nbsp;
            </span>
          </div>
          <div class="card-footer">                  
            <a :href="project['github']" class="text-dark" target="_blank">
              <i class="fab fa-github-square fa-2x"></i>
            </a>
            <a :href="project['web']" class="btn btn-dark float-end" target="_blank">
              View project
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
  
<script>
export default {
    name: "Projects",
    props: {
      projects: JSON
    }
};
</script>
  
<style scoped>
h1 {
  font-size: 2.5rem;
  line-height: 5.5rem;
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-weight: 700;
  text-transform: uppercase;
  color: #343a40;
  padding-top: 5%;
  margin-bottom: 2.5%;
}

h3, h5 {
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-weight: 700;
  text-transform: uppercase;
  color: #343a40;
}

.card-text {
  color: #868e96;
  font-weight: 500;
  font-size: 0.85rem;
}

</style>
