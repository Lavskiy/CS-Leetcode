import Foundation

public enum MergeTwo2DArraysBySummingValues {
    /*
     You are given two 2D integer arrays nums1 and nums2.

     nums1[i] = [idi, vali] indicate that the number with the id idi has a value equal to vali.
     nums2[i] = [idi, vali] indicate that the number with the id idi has a value equal to vali.
     Each array contains unique ids and is sorted in ascending order by id.

     Merge the two arrays into one array that is sorted in ascending order by id, respecting the following conditions:

     Only ids that appear in at least one of the two arrays should be included in the resulting array.
     Each id should be included only once and its value should be the sum of the values of this id in the two arrays. If the id does not exist in one of the two arrays then its value in that array is considered to be 0.
     Return the resulting array. The returned array must be sorted in ascending order by id.
     */
    
    //let nums1 = [[148,597],[165,623],[306,359],[349,566],[403,646],[420,381],[566,543],[730,209],[757,875],[788,208],[932,695]] , nums2 = [[74,669],[87,399],[89,165],[99,749],[122,401],[138,16],[144,714],[148,206],[177,948],[211,653],[285,775],[309,289],[349,396],[386,831],[403,318],[405,119],[420,153],[468,433],[504,101],[566,128],[603,688],[618,628],[622,586],[641,46],[653,922],[672,772],[691,823],[693,900],[756,878],[757,952],[770,795],[806,118],[813,88],[919,501],[935,253],[982,385]]
    // output [[1,6],[2,3],[3,2],[4,6]]
    
    public static func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        var hash = [Int: Int]()
        var first = 0
        var last = 0
        
        nums1.enumerated().forEach { idx, element in
            hash[element[0]] = element[1]
            if first == 0 {
                first = element[0]
            } else {
                first = element[0] < first ? element[0] : first
            }
            last = element[0] > last ? element[0] : first
        }
        
        nums2.enumerated().forEach { idx, element in
            if let exist = hash[element[0]] {
                hash[element[0]] = exist + element[1]
            } else {
                hash[element[0]] = element[1]
            }
            first = element[0] < first ? element[0] : first
            last = element[0] > last ? element[0] : first
        }
                        
        while first <= last {
            if let value = hash[first] {
                result.append([first, value])
            }
            
            first += 1
        }
        
        return result
    }
}
