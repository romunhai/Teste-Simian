public class IsSimianCheck {

    public static void main(String[] args) {
        String[] dna = {"ATGCGA", "CAGTGC", "TTATGT", "AGAAGG", "CCCCTA", "TCACTG"};

        IsSimianCheck simian_object = new IsSimianCheck();
        simian_object.isSimian(dna);
    }

    private boolean isSimian(String[] dna) {
        int n = dna.length;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i < n-3) {

                    // Diagonal
                    if (j < n-3) {
                        String d = "";
                        char gen = dna[i].charAt(j);
                        d += gen;
                        d += dna[i+1].charAt(j+1);
                        d += dna[i+2].charAt(j+2);
                        d += dna[i+3].charAt(j+3);
                        String replaced_string = d.replace(String.valueOf(gen), "");
                        if (replaced_string.length() == 0) {
                            return true;
                        }
                    }

                    // Vertical
                    String v = "";
                    char gen = dna[i].charAt(j);
                    v += gen;
                    v += dna[i+1].charAt(j);
                    v += dna[i+2].charAt(j);
                    v += dna[i+3].charAt(j);
                    String replaced_string = v.replace(String.valueOf(gen), "");
                    if (replaced_string.length() == 0) {
                        return true;
                    }
                }

                // Horizontal
                if (j < n-3) {
                    String h = "";
                    char gen = dna[i].charAt(j);
                    h += gen;
                    h += dna[i].charAt(j+1);
                    h += dna[i].charAt(j+2);
                    h += dna[i].charAt(j+3);
                    String replaced_string = h.replace(String.valueOf(gen), "");
                    if (replaced_string.length() == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}