export function hello(greeting: string, object: string): Promise<string> {
  const trimmedGreeting = greeting.trim();
  const trimmedObject = object.trim();
  if (!trimmedGreeting.length || !trimmedObject.length) {
    return Promise.reject(
      `Invalid input. (greeting=${trimmedGreeting}, object=${trimmedObject})`
    );
  }
  return Promise.resolve(`${trimmedGreeting}, ${trimmedObject}!`);
}
