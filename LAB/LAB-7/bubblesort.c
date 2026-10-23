// bubblesort.c
// sorts sortarray from smallest to largest using bubble sort
// (sortarray starts at address 0x400 in memory)

int main()
{
	int sortarray[10] = {10, 7, 23, 1, 15, 4, 42, 8, 16, 2};
	int i;
	int temp;
	int swapped = 1;

	while (swapped == 1) {
		swapped = 0;
		for (i = 0; i < 9; i = i + 1) {
			if (sortarray[i] > sortarray[i + 1]) {
				// swap them
				temp = sortarray[i];
				sortarray[i] = sortarray[i + 1];
				sortarray[i + 1] = temp;
				swapped = 1;
			}
		}
	}

	return 0;
}
