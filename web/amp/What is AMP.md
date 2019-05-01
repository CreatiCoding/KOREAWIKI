# What is AMP:AMP란 무엇인가

원문 : https://www.ampproject.org/learn/overview/

### 1. 모두를 위해 콘텐츠 생태계를 향상시키는 오픈소스 노력

AMP는 사용자에게 매력적이고 부드럽고 즉각적으로 로드되는 웹 페이지를 만드는 간단한 방법을 제공하는 **오픈소스 라이브러리**입니다. AMP 페이지는 그저 당신에 의해 관리되고 링크를 탈 수 있는 웹 페이지입니다.

AMP는 기존의 기술들과 프레임워크를 기반으로 웹 페이지를 만듭니다. AMP는 다양한 플랫폼에서 지원되며 여러 브라우저에 호환됩니다.

AMP의 생태계에는 게시, 광고, 전자 상거래, 지역 및 중소기업 등에  걸쳐서 2 천 5 백만 도메인, 100 개 이상의 기술 제공 업체 및 주요 플랫폼이 포함됩니다.

### 2. AMP 페이지는 3개의 코어 컴퍼넌트로 빌드되어 있습니다.

#### 1) AMP HTML

AMP HTML은 신뢰할 수 있는 성능을 위해 몇가지 제한이 있는 HTML 입니다.

AMP HTML은 기본적으로 사용자 지정 AMP 속성으로 확장된 HTML입니다.

가장 단순한 AMP HTML 파일은 다음과 같습니다.

```html
<!doctype html>
<html ⚡>
 <head>
   <meta charset="utf-8">
   <link rel="canonical" href="hello-world.html">
   <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1">
   <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
   <script async src="https://cdn.ampproject.org/v0.js"></script>
 </head>
 <body>Hello World!</body>
</html>
```

비록 AMP HTML 페이지에서 대부분의 태그가 정규 HTML 태그일지라도, 몇몇 태그들은 AMP의 태그들로 대체됩니다. ([HTML Tags in the AMP spec](https://www.ampproject.org/docs/reference/spec.html) 를 참고하세요)

AMP HTML 컴포넌트로도 불리는 이런 사용자 지정 요소들은 공통 패턴들을 효율적인 방법으로 구현하기 쉽게 만듭니다.



#### 2) AMP JS

AMP JS 라이브러리는AMP HTML 페이지의 빠른 렌더링을 보장합니다.

AMP JS 라이브러리는 페이지의 빠른 렌더링을 보장하기 위해 AMP의 모든 최상의 성능을 구현하며, 리소스 로딩을 관리하고 위에서 언급된 사용자 지정 태그들을 제공합니다.ㅁ

가장 큰 최적화 중 하나는 외부 리소스를 비동기식으로 사용하여 페이지 내의 어떤 것도 렌더링을 차단할 수 없도록 만든다는 사실입니다.

다른 성능 기술에는 '모든 iframe의 샌드박싱', 리소스가 로드되기전 페이지의 모든 엘리먼트의 레이아웃 사전 계산, 그리고 느린 CSS 선택기를 사용못하게 하는 것들이 있습니다.

[최적화](https://www.ampproject.org/learn/about-how/)와 제한사항에 대해서 알고싶다면 [AMP HTML 상세사항을 읽으세요.](https://www.ampproject.org/docs/reference/spec.html)

