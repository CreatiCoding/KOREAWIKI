## **1. Component를 이용하여 리다이렉트**

```
import React from 'react';
import { Link } from 'react-router';

const FilterLink = () => (
  <Link
    to='/filter'>
    {children}
  </Link>
);

export default FilterLink;
```

react-router의 Link 컴포넌트를 이용하여 redirect한다.

 

## **2. history props를 이용하여 리다이렉트**

 

```
import React from 'react';

class Register extends React.Component {
  handleNext = () => {
    this.props.history.push('/');
  }
  render() {...}
}

export default Register;
```

this.props.history.push(url); history를 이용하여 redirect한다. 



## **3. withRouter를 이용하여 리다이렉트 (하위 컴포넌트에서)**

```
import React from 'react';
import { withRouter } from 'react-router-dom'

class Register extends React.Component {
  handleNext = () => {
    this.props.history.push('/');
  }
  render() {...}
}

export default withRouter(Register);
```

하위 컴포넌트의 경우에는 history를 접근할 수 없어 상위 컴포넌트의 Router의 history 객체와 연결시켜준다.

**v4부터 browserHistory객체를 이용하여 Redirect하지 못한다.**

 참고자료: [https://stackoverflow.com/a/42124328](https://stackoverflow.com/questions/42123261/programmatically-navigate-using-react-router-v4) 





출처: http://kimch3617.tistory.com/entry/React-Router-v4-%EB%A6%AC%EB%8B%A4%EC%9D%B4%EB%A0%89%ED%8A%B8-%ED%95%98%EA%B8%B0
