namespace InsertionSortExample {

    // Function to insert element into a sorted list
    operation InsertIntoSortedList(sortedList : Int[], element : Int) : Unit {
        mutable i = 0;
        mutable found = false;
        while (i < Length(sortedList) and not found) {
            if (sortedList[i] > element) {
                set found = true;
            }
            if (not found) {
                set i = i + 1;
            }
        }
        let updatedList = sortedList[0 .. i] + [element] + sortedList[i .. Length(sortedList) - 1];
        Message($"The list after insertion is: {updatedList}");
    }

    // Entry point for the code
    @EntryPoint()
    operation Main() : Unit {
        // Initialize sorted list
        let testList = [1, 2, 3, 6, 7];

        // Print original list
        Message($"The original list is: {testList}");

        // Insert element into sorted list
        let k = 5;
        InsertIntoSortedList(testList, k);
    }
}

