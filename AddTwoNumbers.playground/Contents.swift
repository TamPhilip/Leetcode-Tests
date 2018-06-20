
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var lOne = l1
    var lTwo = l2
    var final : [Int] = []

    while lOne?.val != nil || lTwo?.val != nil{
        if lTwo?.val == nil{
            lTwo = ListNode(0)
        }
        if lOne?.val == nil{
            lOne = ListNode(0)
        }
        let number = lOne!.val + lTwo!.val
        final.append(number)
        lOne = lOne?.next
        lTwo = lTwo?.next
    }

    for (index, _) in final.enumerated(){
        if final[index] >= 10{
            let n = final[index] / 10
            final[index] -= (10 * n)
            if final.indices.contains(index + 1){
                final[index + 1] += n
            }else{
                final.append(n)
            }
        }
    }
    final.reverse()

    var finalList = ListNode(final[0])
    final.remove(at: 0)
    for number in final{
        let total = ListNode(number)
        total.next = finalList
        finalList = total
    }

    return finalList
}

var one = ListNode.init(2)
one.next = ListNode(4)
one.next!.next = ListNode(3)

var two = ListNode.init(5)
two.next = ListNode(6)
two.next?.next = ListNode(4)

addTwoNumbers(one, two)
