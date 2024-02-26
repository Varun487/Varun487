<template>
  <div class="experience">
    <h1>Experience</h1>
    <div v-for="exp in experience" :key="exp['company']">
      <div class="company">
        <span class="name">{{ exp['company'] }}</span>
        <span class="dates">{{ exp['from'] }} - {{ exp['to'] }}</span>
      </div>
      <div class="title">{{ exp['title'] }}</div>
      <div class="description">
        <div v-for="line in exp['description']" :key="line" class="point">
          <li>{{ line }}</li>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Experience",
  props: {
    experience: JSON,
  }
};
</script>

<style scoped>
.experience {
}

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

.company {
display: flex;
align-items: center;
justify-content: space-between;
}

.name {
font-size: 2rem;
font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
font-weight: 700;
text-transform: uppercase;
color: #343a40;
}

.dates {
margin-right: 5%;
font-size: 1rem;
font-weight: 400;
line-height: 1.5;
text-transform: uppercase;
color: #3859bd;
}

.title {
text-transform: uppercase;
font-weight: 600;
font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
font-size: 1.25rem;
margin-bottom: 1rem;
color: #868e96;
}

.description {
  margin-bottom: 5%;
}

.point {
color: #868e96;
font-size: 1rem;
font-weight: 400;
text-align: left;
margin-left: 5%;
}
</style>
