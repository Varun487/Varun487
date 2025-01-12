<template>
    <div class="navbar">
      <Sidebar 
        v-if="!isSmallScreen" 
        :imgsrc="imgsrc" 
        :sections="sections" 
        :activeSection="activeSection" 
        @updateActiveSection="updateActiveSection" 
      />
      <Topbar 
        v-else 
        :sections="sections" 
        :activeSection="activeSection"
        :name="name"
        @updateActiveSection="updateActiveSection" 
      />
    </div>
</template>
  
<script>
import Sidebar from './Sidebar.vue';
import Topbar from './Topbar.vue';

export default {
components: {
    Sidebar,
    Topbar
},
name: "Navbar",
props: {
    activeSection: String,
    sections: Array,
    imgsrc: String,
    name: String
},
data() {
    return {
    isSmallScreen: window.innerWidth <= 950 || window.innerHeight <= 500
    };
},
mounted() {
    window.addEventListener('resize', this.checkScreenSize);
},
beforeUnmount() {
    window.removeEventListener('resize', this.checkScreenSize);
},
methods: {
    updateActiveSection(section) {
    const element = document.getElementById(section);
    if (element) {
        element.scrollIntoView({ behavior: "smooth" });
    }
    this.$emit("updateActiveSection", section);
    },
    checkScreenSize() {
    this.isSmallScreen = window.innerWidth <= 600;
    }
}
};
</script>

<style scoped>
.navbar {
    display: flex;
    padding: 0;
}
</style>