export function hello(greeting: string, whom: string): Promise<string> {
  const trimmedGreeting = greeting.trim();
  const trimmedWhom = whom.trim();
  if (!trimmedGreeting.length || !trimmedWhom.length) {
    return Promise.reject(
      `Invalid input. (greeting="${trimmedGreeting}", whom="${trimmedWhom}")`
    );
  }
  return Promise.resolve(`${trimmedGreeting}, ${trimmedWhom}!`);
}
