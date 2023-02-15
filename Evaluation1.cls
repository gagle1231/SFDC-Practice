public class Evaluation1 {
	/**
	 * @param intValue 입력값
	 * @return 결과값
	 * @description 1부터 입력값까지의 3의배수, 5의배수 값의 합
	 * 예) 입력값 10이면 3,5,6,9,10를 더한 33, 입력값이 20이면 3,5,6,9,10,12,15,18,20를 더한 98
	 */
	public static Integer getResult3And5(Integer intValue) {
		Integer intResult = 0;

		for(Integer i=1; i*3<=intValue; i++){
			intResult+=i*3;
		}
		for(Integer i=1; i*5<=intValue; i++){
			intResult+=i*5;
		}

		for(Integer i=1; i*15<=intValue; i++){
			intResult-=i*15;
		}
		
		return intResult;
	}
	
	/**
	 * @param intValue 입력숫자
	 * @param intDigit 자리수
	 * @return 결과값
	 * @description 입력숫자에 자리수 만큼 0를 붙여 Return, 자리수가 입력숫자보다 적을 경우는 그냥 입력숫자 return
	 * 예) 입력값이 123, 5 이면 00123, 입력값이 123, 2 이면 123, 입력값이 1234, 8 이면 00001234
	 */
	public static String getStrPatternIntegerToString(Integer intValue, Integer intDigit) {
		String strReturn;
		strReturn = String.valueOf(intValue);
		strReturn = strReturn.leftPad(intDigit, '0');
		return strReturn;
	}
	
	/**
	 * @param dtValue 입력날짜
	 * @return 결과값
	 * @description 입력날짜를 yyyymmdd 형식의 String으로 Return
	 * 예) 2022-12-01 이면 '20221201' 로 return
	 */
	public static String getStrFormatYyyyMmDd(Date dtValue) {
		String strReturn;
		Datetime dt = Datetime.newInstance(dtValue.year(), dtValue.month(), dtValue.day());
		strReturn = dt.format('yyyyMMdd');

		return strReturn;
	}
}
