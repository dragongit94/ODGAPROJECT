<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
  <form name="form">
  <select name="test" onchange="changes(value)">
    <option value="">--�����Ͽ��ּ���--</option>
    <option value="1">1���Դϴ�</option>
    <option value="2">2���Դϴ�</option>
  </select>
    <select name="test2">
    <option>--�Һз��Դϴ�--</option>
  </select>
</form>
</div>

<script type="text/javascript">
  function changes(fr) {
    if(fr==1) {
    //�ѷ��ٰ��� �迭������
    num = new Array("1)ù��°���","1)�ι�°���","1)����°���");
    vnum = new Array("1","2","3");
    } else if(fr==2) {
      num = new Array("2)ù��°���","2)�ι�°���","2)����°���");
    vnum = new Array("1","2","3");
    }
    // ����Ʈ���� ����Ʈ�� �⺻������ �Ѵ�..
  for(i=0; i<form.test2.length; i++) {
    form.test2.options[0] = null;
  }
    //������ �̿��Ͽ� �ι�°(test2)����Ʈ �ڽ��� ���� �ѷ��ݴϴ�)
  for(i=0;i < num.length;i++) {
    document.form.test2.options[i] = new Option(num[i],vnum[i]);
  }
}
</script>
</body>
</html>