import { WebPlugin } from '@capacitor/core';

import type { AlipayPlugin } from './definitions';

export class AlipayWeb extends WebPlugin implements AlipayPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
