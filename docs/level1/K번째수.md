# 정렬: K번째 수 

[프로그래머스](https://programmers.co.kr/learn/courses/30/lessons/42748)

## 요구사항

>배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다.
>
>예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면
>
>1. array의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다.
>2. 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다.
>3. 2에서 나온 배열의 3번째 숫자는 5입니다.
>배열 array, [i, j, k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때, commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.

### 제한 조건

1. - 시험은 최대 10,000 문제로 구성되어있습니다.
2. - 문제의 정답은 1, 2, 3, 4, 5중 하나입니다.
3. - 가장 높은 점수를 받은 사람이 여럿일 경우, return하는 값을 오름차순 정렬해주세요.

## 제출 코드

```javascript
function solution(array, commands) {
	let answer = [];

	commands.forEach((command) => {
		const startIndex = command[0] - 1;
		const endIndex = command[1] - 1;
		const targetIndex = command[2] - 1;

		const slicedArray = array.slice(startIndex, endIndex + 1);
		const sortedArray = slicedArray.sort((a, b) => a - b);
		const result = sortedArray[targetIndex];

		answer.push(result);
	});
	return answer;
}
```

## 풀이 과정

1. 결과를 담을 배열 `answer`를 초기화한다.
2. commands의 각 요소를 순회하며 아래의 작업을 반복한다.
3. `array`를 자를 시작인덱스, 끝인덱스, 자른 배열에서 가져올 아이템의 인덱스를 미리 변수에 저장한다.
4. `array`를 인덱스에 따라 자른다. `slice` 메소드는 끝인덱스를 포함하지 않기 때문에 `endIndex + 1`을 해준다.
5. 자른 배열을 오름차순으로 정렬한다.
6. 정렬된 리스트에서 해당하는 아이템을 가져온다.
7. `answer` 배열에 아이템을 추가한다.
