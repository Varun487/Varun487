<template>
<div class="topbar">
    <div class="topbar-content">
    <div class="topbar-name">{{ name }}</div>
    <button class="toggle-btn" @click="toggleSections">
        ☰
    </button>
    <transition name="slide-down">
        <nav v-if="showSections" class="dropdown-menu">
            <ul>
                <li v-for="section in sections" :key="section" @click="updateActiveSection(section)" :class="{ 'active': activeSection === section }">{{ section }}</li>
            </ul>
        </nav>
    </transition>
    </div>
</div>
</template>

<script>
export default {
name: "Topbar",
props: {
    activeSection: String,
    sections: Array,
    name: String
},
data() {
    return {
        showSections: false,
    };
},
methods: {
    toggleSections() {
        this.showSections = !this.showSections;
    },
    updateActiveSection(section) {
        this.$emit("updateActiveSection", section);
    },
},
};
</script>

<style scoped>
.topbar {
    width: 100%;
    background-color: #3859bd;
    color: white;
    display: flex;
    padding: 10px 0;
    position: fixed;
}

.topbar-content {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
    margin-top: 50px;
}

.topbar-name {
  font-size: 1.5rem;
  font-family: 'Saira Extra Condensed', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  font-weight: 700;
  text-transform: uppercase;
  color: #fff;
  margin-bottom: 0;
}

.toggle-btn {
    background-color: #3859bd;    
    color: rgba(255,255,255,.5);
    border: none;
    font-size: 25px;
    cursor: pointer;
}

nav ul {
    list-style-type: none;
    padding: 0;
}

nav li {
    cursor: pointer;
    margin-bottom: 10px;
    transition: 0.3s;
    color: rgba(255,255,255,0.5);
    text-decoration: none;
}

nav li:hover {
    text-decoration: underline;
    color: rgba(255,255,255,1);
    text-decoration: none;
}

.active {
   color: rgba(255,255,255,1);
}

.dropdown-menu {
  width: 100%;
  background-color: #3859bd;
  position: absolute;
  top: 100%;
  left: 0;
  display: flex;
  justify-content: center;
}

.slide-down {
  transition: all 0.5s ease-in-out;
}

</style>