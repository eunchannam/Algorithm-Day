import java.util.;
class Solution {
    public int solution(int[] people, int limit) {
        int answer = 0;

        Arrays.sort(people);
        int min_weight = 0;

        for (int max_weight = people.length - 1; min_weight = max_weight; max_weight--){
            if (people[min_weight] + people[max_weight] = limit) min_weight++;
            answer++;
        }

        return answer;


    }
}