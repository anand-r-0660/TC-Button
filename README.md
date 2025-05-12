# Button SDK

A React Native SDK for integrating custom buttons with Swift native functionality.

## Installation

```bash
npm install button-sdk
# or
yarn add button-sdk
```

## iOS Setup

1. Add the following to your `ios/Podfile`:
```ruby
pod 'button-sdk', :path => '../node_modules/button-sdk'
```

2. Run pod install:
```bash
cd ios && pod install
```

## Usage

```typescript
import ButtonSDK from 'button-sdk';

// Initialize the SDK
await ButtonSDK.initialize({
  apiKey: 'your-api-key'
});

// Show a custom button
await ButtonSDK.showButton({
  title: 'Click Me',
  style: {
    backgroundColor: '#007AFF',
    textColor: '#FFFFFF',
    cornerRadius: 8
  }
});
```

## API Reference

### initialize(config: { apiKey: string }): Promise<void>
Initializes the SDK with your API key.

### showButton(options: { 
  title: string;
  style?: {
    backgroundColor?: string;
    textColor?: string;
    cornerRadius?: number;
  };
}): Promise<void>
Shows a custom button with the specified options.

## License

MIT
