## Overview

Create-react-app v2 로 `yarn eject` 없이 material component 사용하기



## Background

#### 1. CRA v2에서 달라진 점

 sass 가 기본적으로 동작하게 됩니다.

출처: [https://velog.io/@velopert/create-react-app-v2](https://velog.io/@velopert/create-react-app-v2)

### 2. Getting Started - Material Components for the Web

 웹에서 사용되는 컴포넌트를 사용하기 튜토리얼입니다.

![image](https://user-images.githubusercontent.com/33514304/46901796-56995980-cef5-11e8-8a3e-9cde6bc75ed4.png)

출처에 따르면 node_modules를 추가해야합니다.

출처: [https://material.io/develop/web/docs/getting-started/](https://material.io/develop/web/docs/getting-started/)



## Problem

#### 1. includePaths를 추가하지 않으면 @material scss 파일을 불러오지 못합니다.

![image](https://user-images.githubusercontent.com/33514304/46901824-abd56b00-cef5-11e8-8361-efc9d7f8678f.png)

#### 해결법

- `yarn eject` 를 진행하여 webpack.config.dev.js를 아래와 같이 수정합니다.

  ![image](https://user-images.githubusercontent.com/33514304/46901850-ff47b900-cef5-11e8-9989-a3fce0de1815.png)

#### 2. scss 파일을 못찾습니다.

```scss
@import "@material/top-app-bar/mdc-top-app-bar";
```

위와 같이 scss를 import하면 확장자가 없기 때문에 webpack sass regex에서 찾지 못합니다.

![image](https://user-images.githubusercontent.com/33514304/46901857-3a49ec80-cef6-11e8-83e6-40c4c5c9ae60.png)

#### 해결법

- import에서 scss를 명시합니다.

  ```scss
  @import "@material/top-app-bar/mdc-top-app-bar.scss";
  ```

  - 그럼에도 @material 내부에서 @import 동작시 scss 확장자가 명시되어 있지 않기 때문에 동작되지 않습니다.

#### 3. Eject 없이는 안되나요?

출처: [https://github.com/facebook/create-react-app/issues/4494](https://github.com/facebook/create-react-app/issues/4494)

근본적인 문제점

![image](https://user-images.githubusercontent.com/33514304/46901890-b04e5380-cef6-11e8-9018-01c142418d0d.png)

해결을 위해 2.x 에 milestones 등록되었습니다.

![image](https://user-images.githubusercontent.com/33514304/46901905-f73c4900-cef6-11e8-85b6-b241651ffd0c.png)





## <span style="color:red">해결법</span>

> Hello, everyone.
> In my project, I solved this problem.
> But I'm not sure that this solution is general.
> Is that apply just only me?
> Just test please, anyone.
> If not work, I can remove this comment.
> I didn't do `eject` my project.



> In your scss file, use `@require` rather than `@import`.
>
> <span style="color:red"> scss 파일에서 @import대신 @require를 사용합니다.</span>

```scss
@require "@material/top-app-bar/mdc-top-app-bar";
```

> In your sass file, use `@require` rather than `@import`.
>
> <span style="color:red"> sass 파일에서 @import대신 @require를 사용합니다.</span>

```sass
@require "@material/top-app-bar/mdc-top-app-bar"
```

>  ....Is there someone know why it does work?

> node.js 기반에서 동작되는 sass-loader라서 require 문법이 동작되기 때문인지는 모르겠으나
>
> 표준 문법은 아닌 것으로 알고 있습니다.
>
> 하지만 동작됩니다.
