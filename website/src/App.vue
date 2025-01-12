<template>
  <div id="app" @wheel="handleScroll">
    <Navbar :imgsrc="profileImage" :name="navbarName" :sections="navbarSections" :activeSection="activeSection" @updateActiveSection="updateActiveSection"/>
    <Sections :sections="sections" />
  </div>
</template>

<script>
import Navbar from "./components/Navbar/Navbar.vue";
import Sections from "@/components/Sections.vue";
import data from "@/assets/data.json";

export default {
  name: "App",
  components: {
    Navbar,
    Sections,
  },
  data() {
    return {
      activeSection: data["sidebar"]["activeSection"],
      navbarSections: data["sidebar"]["sections"],
      profileImage: data["sidebar"]["profileImage"],
      sections: data["sections"],
      navbarName:data["sidebar"]["name"],
    };
  },
  methods: {
    handleScroll() {
      let activeSectionFound = false;
      let sectionsCopy = JSON.parse(JSON.stringify(this.navbarSections))

      for (const section of sectionsCopy) {
        const element = document.getElementById(section);
        if (element) {
          const rect = element.getBoundingClientRect();

          // Check if the section is within the viewport
          if (rect.top >= 0 && rect.top < window.innerHeight / 2) {
            this.activeSection = section;
            activeSectionFound = true;
            break;
          }
        }
      }

      // If no section was found in the top half of the viewport, check the bottom
      if (!activeSectionFound) {
        for (const section of sectionsCopy.reverse()) {
          const element = document.getElementById(section);
          if (element) {
            const rect = element.getBoundingClientRect();

            // Check if the section is within the viewport
            if (rect.bottom <= window.innerHeight && rect.bottom > window.innerHeight / 2) {
              this.activeSection = section;
              break;
            }
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

@media (max-width: 600px) {
  .section {
    margin-left: 5%;
  }
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
