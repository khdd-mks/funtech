import riot from 'riot';
import route from 'riot-route';
import todoRoute from './router/todo';
import todo2Route from './router/todo2';
import todo3Route from './router/todo3';
require('./tags/menu.tag');

riot.mount('menu');

// ホスト名以下の部分を #hoge -> /hoge で表示するのに必要
route.base('/');

const subRoutes = [
  todoRoute,
  todo2Route,
  todo3Route
];

for (const subRoute of subRoutes) {
  subRoute('div#main');
}

route('', () => {
  route('/todo');
})

route.start(true);
