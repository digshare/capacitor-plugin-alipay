import { WebPlugin } from '@capacitor/core';

import type { AlipayPlugin, AlipayPluginRequestOptions } from './definitions';

export class AlipayWeb extends WebPlugin implements AlipayPlugin {
  async request(options: AlipayPluginRequestOptions): Promise<any> {
    return options;
  }
}
