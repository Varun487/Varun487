<template>
  <div id="app" @wheel="handleScroll">
    <Sidebar :imgsrc="imageSource" :sections="sections" :activeSection="activeSection" @updateActiveSection="updateActiveSection"/>
    <div>
      <div id="about" class="section">
        <About />
      </div>
      <div id="education" class="section">
        <Education />
      </div>
      <div id="projects" class="section">
        <Projects />
      </div>
      <div id="experience" class="section">
        <Experience />
      </div>
      <div id="skills" class="section">
        <Skills />
      </div>
    </div>
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar.vue";
import About from "@/components/About.vue";
import Education from "@/components/Education.vue";
import Projects from "@/components/Projects.vue";
import Experience from "@/components/Experience.vue";
import Skills from "@/components/Skills.vue";

export default {
  name: "App",
  components: {
    About,
    Education,
    Projects,
    Experience,
    Skills,
    Sidebar,
  },
  data() {
    return {
      activeSection: 'about',
      sections: ['about', 'education', 'projects', 'experience', 'skills'],
      imageSource: "https://media.licdn.com/dms/image/D4E03AQFXPPAFi4grQg/profile-displayphoto-shrink_400_400/0/1667438170508?e=1710374400&v=beta&t=iF2gfD9OFdUVw_ifkHkrcCEqyH-gkMKSXa_RG30jUqY",
    };
  },
  methods: {
    handleScroll() {
      for (const section of this.sections) {
        const element = document.getElementById(section);
        if (element) {
          const rect = document.getElementById(section).getBoundingClientRect();
          if (rect.top >= 0 && rect.top <= window.innerHeight / 2) {
            this.activeSection = section;
            break;
          }
        }
      }
    },
    updateActiveSection(section) {
      this.activeSection = section;
    }
  },
};
</script>

<style>
.section {
  margin-left: 25%;
  padding: 0;
  height: 100vh;
  box-sizing: border-box;
  transition: scroll-behavior 3s ease-in-out;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
