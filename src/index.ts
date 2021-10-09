import { registerPlugin } from '@capacitor/core';

import type { AlipayPlugin } from './definitions';

const Alipay = registerPlugin<AlipayPlugin>('Alipay', {
  web: () => import('./web').then(m => new m.AlipayWeb()),
});

export * from './definitions';
export { Alipay };
