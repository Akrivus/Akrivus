<script>
  import CardCol from "./CardCol.svelte";

  export let name;
  export let level;

  let label;
  let color;

  $: switch (level)
  {
    case "A":
      label = "Expert";
      break;
    case "B":
      label = "Advanced";
      break;
    case "C":
      label = "Intermediate";
      break;
    case "D":
      label = "Experienced";
      break;
    case "F":
      label = "Avoiding";
      break;
    default:
      label = "Novice";
  }

  $: switch (level)
  {
    case "A":
      color = "warning";
      break;
    case "B":
      color = "success";
      break;
    case "C":
      color = "primary";
      break;
    case "D":
      color = "secondary";
      break;
    case "F":
      color = "danger";
      break;
    default:
      color = "white";
  }
</script>

<CardCol sm={2} body center>
  {name}
  {#if level}
    <br />
    <span class="text-{color} small">({label})</span>
  {/if}
</CardCol>