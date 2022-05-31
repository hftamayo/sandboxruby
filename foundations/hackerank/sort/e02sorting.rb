=begin
One common task for computers is to sort data. For example, people might want to see all their files on a computer sorted by size. Since sorting is a simple problem with many different possible solutions, it is often used to introduce the study of algorithms. 

Given a sorted list with an unsorted number in the rightmost cell, can you write some simple code to insert

into the array so that it remains sorted?

Since this is a learning exercise, it won't be the most efficient way of performing the insertion. It will instead demonstrate the brute-force method in detail. 

Assume you are given the array indexed . Store the value of . Now test lower index values successively from to until you reach a value that is lower than , at in this case. Each time your test fails, copy the value at the lower index to the current index and print your array. When the next lower indexed value is smaller than , insert the stored value at the current index and print the entire array.


n= size of array
arr= an array of integers

5
2-4-6-8-3

start from righest side
sample output
2-4-6-8-8
2-4-6-6-8
2-4-4-6-8
2-3-4-6-8

the idea is to make room to the rightest value

a) extract righest value
b) test value from the right until find something lower that righest

expected output:
-print each iteration
-print sorted array

each is the simplest way to iterate an array
arr.each{|val| puts val}

iterate backward:
arr.reverse.each{|val| puts val}
=end

arr = [2, 4, 6, 8, 3]
n = arr.length()
#step 1: get rightest value
rightest = arr[-1]
#step 2: limit the iteration just before righest : arr.limit(n-1)
    # Write your code here
    arr.limit(n-1).reverse.each_with_index! do |value, key|
        value >= rightest ? arr[key+1] = value : arr[key] = rightest
        arr
    end

#codigo en hackerrank
def insertionSort1(n, arr)
    # Write your code here
    rightest = arr[-1]
    
    #limit pertenece a ActiveRecord de RoR arr.limit(n-1).reverse.each_with_index! do |value, key|
    arr.first(n-1).reverse.each_with_index! do |value, key|
        value >= rightest ? arr[key+1] = value : arr[key] = rightest
        arr
    end
end