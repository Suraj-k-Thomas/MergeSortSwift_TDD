//
//  MergeSort.swift
//  MergeSortSwift-TDD
//
//  Created by Suraj  Thomas on 08/03/25.
//
func mergesort(_ array :[Int]) -> [Int] {
    
    if array.count > 1 {
       
        let mid = array.count/2
        let leftArray = mergesort(Array(array[0..<mid]))
        let rightArray = mergesort(Array(array[mid...]))

        return merge(leftArray,rightArray)
    } else {
        return array
        
    }
    
   // guard array.count > 1 else { return array }
    
    
    
}

func merge(_ left : [Int], _ right : [Int]) -> [Int] {
    
    var mergedArray : [Int] = []
    var leftindex = 0, rightindex = 0
    while leftindex < left.count && rightindex < right.count {
        if left[leftindex] < right[rightindex] {
            mergedArray.append(left[leftindex])
            leftindex += 1
        }else {
            mergedArray.append(right[rightindex])
            rightindex += 1
        }
    }
    
    if leftindex < left.count {
       // mergedArray.append(contentsOf: left[leftindex ...])
        mergedArray.append(contentsOf: left[leftindex...])
    }
    
    if rightindex < right.count {
        mergedArray.append(contentsOf: right[rightindex...])
    }
    print("MergedArray = \(mergedArray)")
   // return [1,2,3,4,5]
    return mergedArray
}
