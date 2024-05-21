<script>
  import { Container, Row, Col, Figure, Image } from '@sveltestrap/sveltestrap';
  import Hero from '$lib/components/Hero.svelte';
  import HeroCard from '../lib/components/cards/HeroCard.svelte';
  import WorkCard from '../lib/components/cards/WorkCard.svelte';

</script>

<Hero>
  <Container fluid>
    <Row>
      <Col md={6} xxl={4}>
        <HeroCard />
        <Row cols={1}>
          <Col>
            <WorkCard title="I'm a self-starter."
              body="I seized the day in 2017 with nothing but a broken laptop and developed an ordering app
              for a local cafe. By 2020, I raised $500K and brightened the mornings of 3,000 customers." />
          </Col>
          <Col>
            <WorkCard title="I'm talented."
              body="My journey began in 2012 as a self-taught developer. I learned Visual Basic 6 and developed
              video games that we could play over Skype while he was deployed in Iraq." />
          </Col>
          <Col>
            <WorkCard title="I'm a team player."
              body="I'm inspired by the experiences and talents of others, and benefit greatly from collaboration,
              whether during caffeinated nights at the office or at home over a Zoom call." />
          </Col>
        </Row>
      </Col>
      <Col md={6} xxl={8}>
        <Figure caption="This side is still under construction. It will show a grid of my different projects.">
          <Image src="https://via.placeholder.com/1920x1080" alt="Placeholder" fluid class="rounded" />
        </Figure>
      </Col>
    </Row>
  </Container>
</Hero>