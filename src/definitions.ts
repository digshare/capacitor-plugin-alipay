export interface AlipayPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
