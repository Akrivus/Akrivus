<style>
  .scrolling-row
  {
    white-space: nowrap;
    animation: scroll 10s linear infinite;
  }

  @keyframes scroll
  {
    0%, 100%
    {
      transform: translateX(0);
    }

    50%
    {
      transform: translateX(-100%);
    }
  }
</style>

<div class="row flex-nowrap scrolling-row">
  <slot></slot>
</div>