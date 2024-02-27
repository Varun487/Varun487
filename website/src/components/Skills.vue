<template>
    <div>
      <h1>Skills</h1>
      <h3>Programming languages & tools</h3>
      <div v-for="icon in skills['skill-icons']" :key="icon" class="social-icons">
        <div class="social-icon">
          <i :class="icon"></i>
        </div>
      </div>
      <br style="clear:both" />
      <h3 class="other-skills">Other Skills</h3>
      <ul class="fa-ul">
        <li v-for="sk in skills['skill-list']" :key="sk">
          <i class="fa-li fa fa-check"></i>
          {{ sk }}
        </li>
      </ul>
    </div>
</template>
  
<script>
export default {
  name: "Skills",
  props: {
    skills: JSON,
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

h3 {
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-weight: 700;
  text-transform: uppercase;
  color: #868e96;
}

.social-icons {
  float:left;
  display: flex;
}
.social-icon {
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  width: 1.4rem; 
  height: 1.4rem; 
  color: #fff;
  background: #343a40;
  margin-top: 2rem;
  margin-right: 2rem;
  border: 1rem solid #343a40;
  border-radius: 50%;
}

.social-icon:hover {
  background: #3859bd;
  border-color: #3859bd;
  cursor: pointer;
}

.other-skills {
  margin-top: 10%;
}

.fa-ul {
  margin-left: 0;
  color: #868e96;
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
}

li {
  margin-left: 30px;
  font-size: 1.25rem;
}
</style>
