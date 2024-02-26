<template>
  <div id="app" @wheel="handleScroll">
    <Sidebar :imgsrc="profileImage" :sections="sidebarSections" :activeSection="activeSection" @updateActiveSection="updateActiveSection"/>
    <Sections :sections="sections" />
  </div>
</template>

<script>
import Sidebar from "@/components/Sidebar.vue";
import Sections from "@/components/Sections.vue";
import data from "@/assets/data.json";

export default {
  name: "App",
  components: {
    Sidebar,
    Sections,
  },
  data() {
    return {
      activeSection: data["sidebar"]["activeSection"],
      sidebarSections: data["sidebar"]["sections"],
      profileImage: data["sidebar"]["profileImage"],
      sections: data["sections"],
    };
  },
  methods: {
    handleScroll() {
      for (const section of this.sidebarSections) {
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
