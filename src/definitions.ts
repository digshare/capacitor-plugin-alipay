export interface AlipayPluginRequestOptions {
  orderInfo: string;
  fromScheme?: string;
}

export interface AlipayPluginRequestResult {
  code: string;
  message: string;
}

export interface AlipayPlugin {
  request(options: AlipayPluginRequestOptions): Promise<AlipayPluginRequestResult>;
}
