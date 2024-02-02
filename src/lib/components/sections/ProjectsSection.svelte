<script>
  import Section from "$lib/components/Section.svelte";
  import ThirdImageCard from "$lib/components/cards/smart/ThirdImageCard.svelte";

  import src_portfolio from "$lib/images/projects/portfolio.png";
  import src_livinglegend from "$lib/images/projects/livinglegend.png";
  import src_photogo from "$lib/images/projects/photogo.png";
  import src_chatws from "$lib/images/projects/chatws.png";
  import src_comingsoon from "$lib/images/projects/comingsoon.png";
  import src_restfulcraft from "$lib/images/projects/restfulcraft.png";
  import src_coffeecraft from "$lib/images/projects/coffeecraft.png";
  import src_kagic from "$lib/images/projects/kagic.png";
</script>

<Section id="projects" title="My Projects" link="Projects">
  <ThirdImageCard title="My Portfolio" src={src_portfolio} alt="Early thumbnail of my portfolio.">
    <p slot="body">
      In 2024, I developed a new portfolio website to showcase my skills and
      experience using SvelteKit, a new way to create single-page web front-ends.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/Akrivus" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="Living Legend" src={src_livinglegend} alt="Procedurally generated island with tide and erosion.">
    <p slot="body">
      I'm developing a procedurally generated island with simulated noise,
      ecosystems, and civilizations that GPT can use to string together epics.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/LivingLegend" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="PhotoGo" src={src_photogo} alt="Image coming soon.">
    <p slot="body">
      Upload, share, and comment on photos with PhotoGo, a social media
      platform powered by Ruby on Rails and CarrierWave.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/PhotoGo" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="ChatWS" src={src_chatws} alt="Image coming soon.">
    <p slot="body">
      Send messages to friends with ChatWS, a chat application built with
      Sinatra to demonstrate proficiency in Ruby and with WebSockets.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/ChatWS" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="MobiMenu" src={src_comingsoon} alt="Image coming soon.">
    <p slot="body">
      Ruby powered display server for restaurants and cafes who don't have a
      TV with picture mode, but do have a spare Raspberry Pi 4 laying around.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/MobiMenu" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="RESTfulCraft" src={src_restfulcraft} alt="Image coming soon.">
    <p slot="body">
      An attempt to teach RESTful API design using Minecraft as a model.
      Blocks are resources, and the world is your API endpoint.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/RESTfulCraft" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="Block Party" src={src_comingsoon} alt="Image coming soon.">
    <p slot="body">
      A spiritual successor to my popular KAGIC mod, Block Party adds <i>tsukumogami</i>,
      blocks that come to life and enjoy the world around them.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/BlockParty" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="CoffeeCraft" src={src_coffeecraft} alt="Image coming soon.">
    <p slot="body">
      A Minecraft mod that introduces the coffee industry from the ground
      up. Grow coffee beans, roast them, build your own cafe and sell to villagers.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/CoffeeCraft" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="KAGIC" src={src_kagic} alt="Image coming soon.">
    <p slot="body">
      A popular Minecraft mod that introduces holographic guardians called
      Gems. Gems are born to serve, and read chat with rule-based NLP.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/kagic" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
</Section>