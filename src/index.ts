import { NativeModules, Platform } from 'react-native';

const { ButtonSDK } = NativeModules;

interface ButtonSDKInterface {
  initialize(config: { apiKey: string }): Promise<void>;
  showButton(options: { 
    title: string;
    style?: {
      backgroundColor?: string;
      textColor?: string;
      cornerRadius?: number;
    };
  }): Promise<void>;
}

if (!ButtonSDK) {
  throw new Error('ButtonSDK native module is not available');
}

export default ButtonSDK as ButtonSDKInterface; 