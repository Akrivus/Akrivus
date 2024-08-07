<script>
  import CardCol from "../CardCol.svelte";

  export let name;
  export let level;
  let color;

  $: switch (level)
  {
    case "Intermediate":
    case "Experienced":
      color = "primary";
      break;
    case "Advanced":
    case "Expert":
      color = "success";
      break;
    case "Avoiding":
      color = "danger";
      break;
    case "Beginner":
    case "Novice":
      color = "secondary";
      break;
    default:
      color = "white";
  }
</script>

<CardCol sm={2} body center>
  {name}
  {#if level}
    <br />
    <span class="text-{color} small">({level})</span>
  {/if}
</CardCol>