import { Button } from "@/components/ui/button";

export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center p-24">
      <div className="z-10 max-w-5xl w-full items-center justify-center font-mono text-sm flex flex-col">
        <h1 className="text-4xl font-bold mb-8">Next.js Template</h1>
        <p className="mb-4">
          This is a Next.js template with TypeScript, Tailwind CSS, and
          shadcn/ui.
        </p>
        <Button>Get Started</Button>
      </div>
    </main>
  );
}
