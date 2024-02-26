<template>
    <div class="education">
      <h1>Education</h1>
      <div v-for="edu in education" :key="edu['institution']">
        <div class="institution">
          <span class="name">{{ edu['institution'] }}</span>
          <span class="dates">{{ edu['from'] }} - {{ edu['to'] }}</span>
        </div>
        <div class="program">{{ edu['program'] }}</div>
        <div class="description">{{ edu['description'] }}</div>
      </div>
    </div>
</template>
  
<script>
export default {
    name: "Education",
    props: {
        education: JSON,
    }
};
</script>
  
<style scoped>
.education {
  box-sizing: border-box;
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

.institution {
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

.program {
  text-transform: uppercase;
  font-weight: 600;
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-size: 1.25rem;
  margin-bottom: 1rem;
  color: #868e96;
}

.description {
  color: #868e96;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  text-align: left;
  margin-bottom: 2rem;
}
</style>
