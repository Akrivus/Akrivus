<script>
  export let title;

  import Card from "$lib/components/cards/Card.svelte";
</script>

<Card sizes={["12", "sm-6", "md-4"]}>
  <h5 slot="header" class="card-title">{title}</h5>
  <div slot="content" class="card-text">
    <slot></slot>
  </div>
</Card>