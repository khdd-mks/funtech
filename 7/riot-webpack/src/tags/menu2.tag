<menu2>
  <button each={ target in targets } onclick={ parent.jump.bind(this, target.path) }>{ target.name }</button>

  <style>
    button {
      font-size: 14px;
    }
  </style>

  <script>
    import route from 'riot-route';

    this.targets = [
      { path: '/todo4', name: 'TODO 4' },
      { path: '/todo5', name: 'TODO 5' },
      { path: '/todo6', name: 'TODO 6' },
    ];

    jump(path, e) {
      console.log(path);
      route(path);
    }
  </script>

</menu2>
