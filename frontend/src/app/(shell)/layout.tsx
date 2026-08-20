import { ReactNode } from "react";
import Container from "@/components/ui/Container";

/**
 * Ichki sahifalar qobig'i.
 * Lending (bosh sahifa) to'liq kenglikda qoladi, qolgan sahifalar esa
 * yagona markaziy ustunda va yuqoridan sarlavha uchun bo'shliq bilan chiziladi.
 */
export default function ShellLayout({ children }: { children: ReactNode }) {
  return (
    <Container width="wide" className="py-10 sm:py-14">
      {children}
    </Container>
  );
}
