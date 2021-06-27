import countWords from '../src/__PROJECT-NAME__';

test('Count words correctly', () => {
  expect(countWords("")).toBe(0);
  expect(countWords("Hola")).toBe(1);
  expect(countWords("Hola lucky")).toBe(2);
});
