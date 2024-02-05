<template>
    <div class="sidebar">
        <img :src="imgsrc" alt="Sidebar Image" class="sidebar-image" />
        <nav>
            <ul>
                <li v-for="section in sections" :key="section" @click="updateActiveSection(section)" :class="{ 'active': activeSection === section }">{{ section }}</li>
            </ul>
        </nav>
    </div>
</template>
  
<script>
export default {
    name: "Sidebar",
    props: {
        activeSection: String,
        sections: Array,
        imgsrc: String,
    },
    methods: {
        updateActiveSection(section) {
            const element = document.getElementById(section);
            if (element) {
                element.scrollIntoView({ behavior: "smooth" });
            }
            this.$emit("updateActiveSection", section);
        },
    },
};
</script>
  
<style scoped>
.sidebar {
    width: 15%;
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    background-color: #3859bd;
    color: #fff;
    padding: 20px;
    text-align: center;
    text-transform: uppercase;
    font-weight: 800;
    letter-spacing: 0.05rem;
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

.sidebar-image {
  max-width: 10rem;
  max-height: 10rem;
  border: 0.5rem solid rgba(255, 255, 255, 0.2);
  border-radius: 100%;
}

</style>
