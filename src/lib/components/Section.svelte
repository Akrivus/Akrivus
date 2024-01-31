<script>
  export let title = "Featured";
  export let id = null;
  export let link = null;

  import { navlinkStore } from '$lib/util/NavLinkStore.js';

  id = id ?? title.toLowerCase();
  link = link ?? title;
  navlinkStore.update((navlinks) => navlinks = [...navlinks, {id, link}]);
</script>

<section id="{id}">
  <div class="container px-4 py-5">
    <h2 class="pb-2 border-bottom">{title}</h2>
    <div class="g-4 py-5">
      <slot>Loading...</slot>
    </div>
  </div>
</section>