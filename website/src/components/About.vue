<template>
    <div class="about">
      <div class="name">
        {{ about['firstname'] }} <span class="lastname"> {{ about['lastname'] }}</span>
      </div>
      <div class="contact">
        <span class="phone"> {{ about['phone'] }} </span> ·
        <span class="email"> {{ about['email'] }} </span>
      </div>
      <div class="description">
        {{ about['description'] }}
      </div>
      <div v-for="link in about['links']" :key="link['link']" class="social-icons">
        <div class="social-icon">
          <a :href="link['link']" target="_blank"><i :class="link['icon']"></i></a>
        </div>
      </div>
    </div>
</template>
  
<script>
export default {
    name: "Sections",
    props: {
        about: JSON,
    }
};
</script>
  
<style scoped>
.about {
  box-sizing: border-box;
}

.name {
  font-size: 5rem;
  line-height: 5.5rem;
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-weight: 700;
  text-transform: uppercase;
  color: #343a40;
  padding-top: 15%;
  margin-bottom: 0;
}

.lastname, .email {
  color: #3859bd;
}

.contact {
  text-transform: uppercase;
  font-weight: 500;
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-size: 1.25rem;
  color: #868e96;
}

.description {
  font-size: 1.15rem;
  font-weight: 400;
  margin-top: 2rem !important;
  font-family: 'Muli', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
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
  font-size: 2rem;
  width: 3rem; 
  height: 3rem; 
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

a {
  color: #fff;
}
</style>
