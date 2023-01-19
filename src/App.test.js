import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/Quick test change in the feature1 branch/i);
  expect(linkElement).toBeInTheDocument(); 
});
