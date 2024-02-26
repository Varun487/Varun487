<template>
    <div class="sections">
      <div id="about" class="section">
        <About :about="sections['about']"/>
      </div>
      <div id="education" class="section">
        <Education :education="sections['education']" />
      </div>
      <div id="experience" class="section">
        <Experience :experience="sections['experience']"/>
      </div>
      <div id="projects" class="section">
        <Projects :projects="sections['projects']"/>
      </div>
      <div id="skills" class="section">
        <Skills />
      </div>
    </div>
</template>
  
<script>
import About from "@/components/About.vue";
import Education from "@/components/Education.vue";
import Projects from "@/components/Projects.vue";
import Experience from "@/components/Experience.vue";
import Skills from "@/components/Skills.vue";

export default {
    name: "Sections",
    components: {
        About,
        Education,
        Projects,
        Experience,
        Skills
    },
    props: {
        sections: JSON,
    },
    methods: {
    },
};
</script>
  
<style scoped>
.section {
  height: fit-content;
  margin-bottom: 20%;
}
</style>
