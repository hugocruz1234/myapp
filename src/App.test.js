import { render, screen } from '@testing-library/react';
import ImageExampleImage from './ImageExampleImage';

test('renders learn react link', () => {
  render(<ImageExampleImage />);
  const linkElement = screen.getByText(/learn react/i);
  expect(linkElement).toBeInTheDocument();
});
