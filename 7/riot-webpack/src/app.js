import riot from 'riot';
import route from 'riot-route';
import todoRoute from './router/todo';

// ホスト名以下の部分を #hoge -> /hoge で表示するのに必要
route.base('/');

const subRoutes = [
  todoRoute
];

for (const subRoute of subRoutes) {
  subRoute('div#main');
}

route('', () => {
  route('/todo');
})

route.start(true);
