import riot from 'riot';
import route from 'riot-route';
require('../tags/todo3.tag');

export default function(mainSelector) {
  const todoRoute = route.create();

  todoRoute('/todo3', () => {
    riot.mount(mainSelector, 'todo3', { title: 'TODO 3' });
  });

  return todoRoute;
}
