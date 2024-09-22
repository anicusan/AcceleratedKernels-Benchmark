#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <stdio.h>


void rbf_cpu(float *z, float *v, int n) {
    for (int i = 0; i < n; ++i)
        z[i] = expf(-1 / (1 - sqrtf(powf(v[3 * i], 2) +
                                    powf(v[3 * i + 1], 2) +
                                    powf(v[3 * i + 2], 2))));
}


void rbf_cpu2(float *z, float *v, int n) {
    for (int i = 0; i < n; ++i)
        z[i] = expf(-1 / (1 - sqrtf(v[3 * i] * v[3 * i] +
                                    v[3 * i + 1] * v[3 * i + 1] +
                                    v[3 * i + 2] * v[3 * i + 2])));
}


void ljg_cpu(float *energies, float *atoms1, float *atoms2, int n,
             float epsilon, float sigma, float A, float r0, float cutoff) {
    for (int i = 0; i < n; ++i) {
        float r = sqrtf(powf(atoms1[3 * i] - atoms2[3 * i], 2) +
                        powf(atoms1[3 * i + 1] - atoms2[3 * i + 1], 2) +
                        powf(atoms1[3 * i + 2] - atoms2[3 * i + 2], 2));
        if (r < cutoff) {
            float lj_potential = 4 * epsilon * (powf(sigma / r, 12) - powf(sigma / r, 6));
            float g_potential = A * expf(-powf(r - r0, 2) / (2 * powf(sigma, 2)));
            energies[i] = lj_potential + g_potential;
        } else {
            energies[i] = 0;
        }
    }
}


float dist3(float *x, float*y) {
    return sqrt((x[0] - y[0]) * (x[0] - y[0]) +
                (x[1] - y[1]) * (x[1] - y[1]) +
                (x[2] - y[2]) * (x[2] - y[2]));
}


void ljg_cpu2(float *energies, float *atoms1, float *atoms2, int n,
              float epsilon, float sigma, float A, float r0, float cutoff) {
    for (int i = 0; i < n; ++i) {
        float r = dist3(atoms1 + 3 * i, atoms2 + 3 * i);
        if (r < cutoff) {
            // Manual integer exponentiation
            float rs = sigma / r;
            float rs3 = rs * rs * rs;
            float rs6 = rs3 * rs3;
            float rs12 = rs6 * rs6;

            float lj_potential = 4 * epsilon * (rs12 - rs6);
            float g_potential = A * expf(-(r - r0) * (r - r0) / (2 * sigma * sigma));
            energies[i] = lj_potential + g_potential;
        } else {
            energies[i] = 0;
        }
    }
}


int main(int argc, char **argv) {

    if (argc != 2) {
        printf("Wrong number of arguments - supply one number\n");
        return 1;
    }

    // Allocate arrays
    int n = atoi(argv[1]);
    printf("n = %d\n", n);

    float *z = (float*)malloc(n * sizeof(float));
    float *v = (float*)malloc(3 * n * sizeof(float));

    // Fill v with random values
    srand(0);
    for (int i = 0; i < 3 * n; ++i)
        v[i] = (float)rand() / (float)(RAND_MAX);

    // Call RBF kernel
    int repeats = 10;
    clock_t begin = clock();
    for (int i = 0; i < repeats; ++i)
        rbf_cpu(z, v, n);
    clock_t end = clock();
    double time_spent = (double)(end - begin) / CLOCKS_PER_SEC / repeats;
    printf("Spent %f s\n", time_spent);

    for (int i = 0; i < 100; ++i)
        printf("%f ", z[i]);
    printf("\n");

    // Deallocate arrays
    free(z);
    free(v);

    return 0;
}

