import React from 'react';
import { TouchableOpacity, Text, StyleSheet, View } from 'react-native';

interface CustomButtonProps {
  title: string;
  onPress: (data: any) => void;
  customData?: any;
  style?: any;
}

const CustomButton: React.FC<CustomButtonProps> = ({
  title,
  onPress,
  customData,
  style
}) => {
  const handlePress = () => {
    onPress(customData);
  };

  return (
    <View style={[styles.container, style]}>
      <TouchableOpacity
        style={styles.button}
        onPress={handlePress}
      >
        <Text style={styles.text}>{title}</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  button: {
    backgroundColor: '#007AFF',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
    minWidth: 120,
    alignItems: 'center',
  },
  text: {
    color: 'white',
    fontSize: 16,
    fontWeight: '600',
  },
});

export default CustomButton; 