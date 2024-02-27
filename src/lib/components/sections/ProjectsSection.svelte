<script>
  import Section from "$lib/components/Section.svelte";
  import ThirdImageCard from "$lib/components/cards/smart/ThirdImageCard.svelte";

  import src_confable from "$lib/images/projects/confable.gif";
  import src_portfolio from "$lib/images/projects/portfolio.png";
  import src_livinglegend from "$lib/images/projects/livinglegend.png";
  import src_photogo from "$lib/images/projects/photogo.png";
  import src_chatws from "$lib/images/projects/chatws.png";
  import src_mobimenu from "$lib/images/projects/mobimenu.png";
  import src_blockparty from "$lib/images/projects/blockparty.png";
  import src_restfulcraft from "$lib/images/projects/restfulcraft.png";
  import src_kagic from "$lib/images/projects/kagic.png";
</script>

<Section id="projects" title="My Projects" link="Projects">
  <ThirdImageCard title="Confable" src={src_confable} alt="Machinima Man's posture and mouth are driven by what he says.">
    <p slot="body">
      Confable is a tool for creating machinima, or movies made in video games,
      using LLMs to drive character animation, dialogue, and camera movement.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <p class="icon-link text-muted text-decoration-none mb-0">Under License</p>
    </div>
  </ThirdImageCard>
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
      Living Legend is a procedurally generated island with tide, erosion, ecosystems,
      and civilizations that uses GPT to craft an entertaining story for the player.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/LivingLegend" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="PhotoGo" src={src_photogo} alt="PhotoGo, an image sharing website.">
    <p slot="body">
      Upload, share, and comment on photos with PhotoGo, a social media
      platform powered by Ruby on Rails and CarrierWave.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/PhotoGo" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="ChatWS" src={src_chatws} alt="ChatWS, a chat application.">
    <p slot="body">
      Send messages to friends with ChatWS, a chat application built with
      Sinatra to demonstrate proficiency in Ruby and with WebSockets.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/ChatWS" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="MobiMenu" src={src_mobimenu} alt="MobiMenu, a display control dashboard.">
    <p slot="body">
      Ruby powered display server for restaurants and cafes who don't have a
      TV with picture mode, but do have a spare Raspberry Pi 4 laying around.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/MobiMenu" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="RESTfulCraft" src={src_restfulcraft} alt="RESTfulCraft with Postman open to assist in demonstration.">
    <p slot="body">
      An attempt to teach RESTful API design using Minecraft as a model.
      Blocks are resources, and the world is your API endpoint.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/RESTfulCraft" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="Block Party" src={src_blockparty} alt="Tomio, an animated cat girl, 'As a Moe, my job is to do something, but my developer hasn't thought of what yet.'">
    <p slot="body">
      Block Party introduces 300 uniquely designed characters, with an
      LLM-driven dialogue system for content creators to use in their videos.
    </p>
    <div slot="link">
      <i class="fab fa-github" /> 
      <a href="https://github.com/Akrivus/BlockParty" class="icon-link">View On GitHub</a>
    </div>
  </ThirdImageCard>
  <ThirdImageCard title="KAGIC" src={src_kagic} alt="A Minecraft tundra with three Ruby guards staring off into the distance.">
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