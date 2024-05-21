<script>
  import { Container, Row, Col } from '@sveltestrap/sveltestrap';
  import Hero from '$lib/components/Hero.svelte';
  import HeroCard from '../lib/components/cards/HeroCard.svelte';
  import WorkCard from '../lib/components/cards/WorkCard.svelte';

  import src_blockparty from '$lib/images/projects/blockparty.png';
  import src_restfulcraft from '$lib/images/projects/restfulcraft.png';
  import src_portfolio from '$lib/images/projects/portfolio.png';

  import src_photogo from '$lib/images/projects/photogo.png';
  import src_mobimenu from '$lib/images/projects/mobimenu.png';
  import src_oco from '$lib/images/projects/oco.png';
</script>

<Hero>
  <Container fluid>
    <Row>
      <Col md={6} xxl={4}>
        <HeroCard />
        <Row cols={1}>
          <Col>
            <WorkCard title="I'm a self-starter."
              body="In 2017, with nothing but a broken laptop, I developed an ordering app
              for a local cafe. By 2020, I raised $500K and brightened the mornings of 3,000 customers." />
          </Col>
          <Col>
            <WorkCard title="I'm talented."
              body="My journey began in 2012 as a self-taught developer. I learned Visual Basic 6 and made
              a video game for my dad and I to play while he was overseas." />
          </Col>
          <Col>
            <WorkCard title="I'm a team player."
              body="I'm inspired by others, and benefit greatly from collaboration,
              whether during caffeinated nights, at the office, or at home over a Zoom call." />
          </Col>
        </Row>
      </Col>
      <Col md={6} xxl={8}>
        <Row cols={{ lg: 2, xl: 3 }}>
          <Col>
            <WorkCard src="{src_blockparty}" alt="Block Party" title="Block Party"
              body="Block Party introduces 300 uniquely designed characters, with an LLM-driven dialogue
              system for content creators to use in their videos." />
          </Col>
          <Col>
            <WorkCard src="{src_portfolio}" alt="Portfolio" title="Portfolio"
              body="In 2024, I developed a new portfolio website to showcase my skills and experience using
              SvelteKit to create a dynamic single-page app." />
          </Col>
          <Col>
            <WorkCard src="{src_restfulcraft}" alt="RestfulCraft" title="RestfulCraft"
              body="An attempt to teach RESTful API design using Minecraft as a model. Blocks are resources,
              and the world is your API endpoint." />
          </Col>
          <Col>
            <WorkCard src="{src_photogo}" alt="PhotoGo" title="PhotoGo"
              body="PhotoGo is an image sharing app built in Ruby on Rails 5, but has since been upgraded to
              Ruby on Rails 7 and using ActiveStorage." />
          </Col>
          <Col>
            <WorkCard src="{src_oco}" alt="Order Coffee Online" title="Order Coffee Online"
              body="OCO was an app for ordering coffee in Kansas City. It was built in Ruby on Rails and
              integrated with Stripe and used Twilio for SMS notifications." />
          </Col>
          <Col>
            <WorkCard src="{src_mobimenu}" alt="MobiMenu" title="MobiMenu"
              body="MobiMenu is web application for managing menus across multiple storefronts and ensuring
              accessible viewing options for customers." />
          </Col>
        </Row>
      </Col>
    </Row>
  </Container>
</Hero>