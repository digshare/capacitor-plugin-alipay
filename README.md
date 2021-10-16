# capacitor-plugin-alipay

An Alipay plugin for Capacitor

Thanks to [capacitor-plugin-pay](https://github.com/veluxa/capacitor-plugin-pay)

## Install

```bash
npm install @mufan/capacitor-plugin-alipay
npx cap sync
```

## API

<docgen-index>

* [`request(...)`](#request)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### request(...)

```typescript
request(options: AlipayPluginRequestOptions) => any
```

| Param         | Type                                                                              |
| ------------- | --------------------------------------------------------------------------------- |
| **`options`** | <code><a href="#alipaypluginrequestoptions">AlipayPluginRequestOptions</a></code> |

**Returns:** <code>any</code>

--------------------


### Interfaces


#### AlipayPluginRequestOptions

| Prop             | Type                |
| ---------------- | ------------------- |
| **`orderInfo`**  | <code>string</code> |
| **`fromSchema`** | <code>string</code> |


#### AlipayPluginRequestResult

| Prop          | Type                |
| ------------- | ------------------- |
| **`code`**    | <code>string</code> |
| **`message`** | <code>string</code> |

</docgen-api>
