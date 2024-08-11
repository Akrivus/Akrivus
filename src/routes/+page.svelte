<script>
  import { Container, Col, Row } from '@sveltestrap/sveltestrap';

  import CardCol from '../lib/components/CardCol.svelte';

  import CaseStudy from '../lib/components/cards/CaseStudy.svelte';
  import About from '../lib/components/cards/About.svelte';
  import SkillSearch from '../lib/components/cards/SkillSearch.svelte';
</script>

<style>
  :global(body) {
    background-color: #121416;
  }
</style>

<Container class="mt-5">
  <Row>
    <CardCol lg={6}>
      <About />
    </CardCol>
    <Col>
      <h2>My Experience</h2>
      <Row>
        <CaseStudy title="Unity" subtitle="Software Engineer" note="March 2020 - May 2023" />
    
        <CaseStudy title="VisualLive" subtitle="Full Stack Developer" note="March 2019 - March 2020" />
    
        <CaseStudy title="Syntreno" subtitle="Lead Software Engineer" note="August 2023 - August 2024" />
    
        <CaseStudy title="OCO" subtitle="Founder, Developer" note="September 2017 - April 2019" />
      </Row>
    </Col>
  </Row>

  <Row>
    <h2 class="mt-5">My Projects</h2>
    <CaseStudy md={6} lg={3} title="Portfolio" subtitle="You're looking at it." />

    <CaseStudy md={6} lg={3} title="OCO" subtitle="Order coffee online and pick-up." />

    <CaseStudy md={6} lg={3} title="Confable" subtitle="AI-controlled bodies." format="gif" />

    <CaseStudy md={6} lg={3} title="Block Party" subtitle="Craft stories in Minecraft." />
  </Row>

  <h2 class="mt-5">My Skills</h2>
  <SkillSearch key="SKILLS" />
</Container>